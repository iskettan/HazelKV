
#include <iostream>
#include <unordered_map>
#include "Database.h"
#include <vector>
#include "spdlog/spdlog.h"
#include <fstream>
#include <thread>
#include <chrono>
#include <sstream>

std::unordered_map<std::string, std::string> *Database::database =
        new std::unordered_map<std::string, std::string>();
unsigned int Database::databaseMutexesSize = 1; // Currently, HazelKV only supports one bucket
std::shared_mutex Database::databaseWideMutex;  // Currently, HazelKV only supports one bucket

std::queue<std::pair<std::string, std::string>> Database::queuedTasks;
std::mutex Database::queueMutex;

std::condition_variable Database::batchReadyCV;
bool Database::isBatchReady = false;

bool Database::isReliable = true;
unsigned long Database::eachLogSize = 16 * 1024 * 1024;

unsigned long Database::lastFileNumber = 0;

std::string Database::logPath = "";

// Which ever occurs first
unsigned int Database::REFRESH_RATE = 2000; // in microSecond
unsigned int Database::BATCH_SIZE = 256;

std::condition_variable Database::completedBatchNumberCV;
std::mutex Database::completedBatchNumberMutex;
unsigned long Database::completedBatchNumber = 0;


std::string Database::get(std::string key) {
    unsigned int mutexIndex = std::hash<std::string>{}(key) % Database::databaseMutexesSize;
    std::shared_lock<std::shared_mutex> l(Database::databaseWideMutex); // TODO support multiple buckets
    auto value = Database::database->find(key);
    if (value == Database::database->end())
        return "";
    return value->second;
}

bool Database::put(std::string key, std::string value) {

    int currentCompletedBatchNumber;
    {
        // hold batchNumberlock
        std::unique_lock<std::mutex> completedBatchNumLock(Database::completedBatchNumberMutex);
        currentCompletedBatchNumber = Database::completedBatchNumber;

        {
            std::unique_lock<std::mutex> qm(Database::queueMutex);

            Database::queuedTasks.push({key, value});
            if (queuedTasks.size() >= Database::BATCH_SIZE) {
                Database::isBatchReady = true;
                Database::batchReadyCV.notify_one();
            }
        }
        while (currentCompletedBatchNumber + 1 >=
               Database::completedBatchNumber) { //because there might be a thread waiting to increment it
            Database::completedBatchNumberCV.wait(completedBatchNumLock);
        }
    }
    return true;

}


bool Database::batchPut(std::vector<std::pair<std::string, std::string>> &batch) {

    int currentCompletedBatchNumber;
    {
        // hold batchNumberlock
        std::unique_lock<std::mutex> completedBatchNumLock(Database::completedBatchNumberMutex);
        currentCompletedBatchNumber = Database::completedBatchNumber;

        {
            std::unique_lock<std::mutex> qm(Database::queueMutex);

            for (auto &keyValuePair : batch)
                Database::queuedTasks.push(keyValuePair);
            if (queuedTasks.size() >= Database::BATCH_SIZE) {
                Database::isBatchReady = true;
                batchReadyCV.notify_one();
            }
        }
        while (currentCompletedBatchNumber + 1 >= Database::completedBatchNumber) {
            Database::completedBatchNumberCV.wait(completedBatchNumLock);
        }
        // wait for batchnumber to be bigger than when added a task
    }
    return true;

}


bool isBatchReadyFunc() { return Database::isBatchReady; }

void Database::batchApply() {
    std::vector<std::pair<std::string, std::string>> tmpTasks;
    std::stringstream sstream;
    std::ofstream outfile;
    while (true) {

        {
            std::unique_lock<std::mutex> lck(Database::queueMutex);
            Database::batchReadyCV.wait_for(lck, std::chrono::microseconds(Database::REFRESH_RATE), isBatchReadyFunc);

            // entered
            Database::isBatchReady = false;
            tmpTasks = std::vector<std::pair<std::string, std::string>>(Database::queuedTasks.size());
//            spdlog::critical(Database::queuedTasks.size());
            for (unsigned int i = 0; i < Database::queuedTasks.size(); i++) {
                tmpTasks[i] = queuedTasks.front();
                queuedTasks.pop();
            }
        }
        if (Database::isReliable) {
            {
//int8_t x = 200;

                outfile.open(Database::logPath + "redoLog_" +
                             std::to_string(Database::lastFileNumber),
                             std::ios_base::app); // append instead of overwrite
                if (outfile.tellp() >= Database::eachLogSize)
                    Database::lastFileNumber++;
                for (auto &task : tmpTasks) {
                    sstream << "K: " + task.first + "\n";
                    sstream << "V: " + task.second + "\n";
                    sstream << "C: " + std::to_string(
                            std::hash<std::string>{}(task.first) + std::hash<std::string>{}(task.second)) + "\n";
                }
                outfile << sstream.rdbuf();
                outfile.close();

            }
        }

        {
            std::unique_lock<std::shared_mutex> l(Database::databaseWideMutex);
            for (auto &task : tmpTasks) {
                (*Database::database)[task.first] = task.second;
            }
        }
        std::unique_lock<std::mutex> batchNumberLock(Database::completedBatchNumberMutex);
        Database::completedBatchNumber++;
        Database::completedBatchNumberCV.notify_all();

    }

}