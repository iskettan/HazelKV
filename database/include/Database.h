//
// Created by ibrahim on 2020-04-28.
//


#ifndef HAZELKV_DATABASE_H
#define HAZELKV_DATABASE_H

#include <iostream>
#include <unordered_map>
#include <shared_mutex>
#include <vector>
#include <queue>

enum TaskOperation { PUT, COMMIT };

struct QueuedTask{
    TaskOperation operation;
    long long commitIndex;
    std::string key;
    std::string value;
};

class Database {
//private:
public:
    static std::unordered_map<std::string, std::string>* database;
    static std::unordered_map<std::string, long long>* commitIndexDatabase;
    static std::unordered_map<std::string, long long>* potentialCommitIndexDatabase;

    static std::queue<std::pair<std::string, QueuedTask>> queuedTasks;
    static std::mutex queueMutex;

    static std::shared_mutex databaseWideMutex;
    static std::condition_variable batchReadyCV;

    static std::condition_variable completedBatchNumberCV;
    static std::mutex completedBatchNumberMutex;
    static unsigned long completedBatchNumber;

    static bool isBatchReady;
    static unsigned int databaseMutexesSize;
    static bool isReliable;
    static std::string logPath;
    static unsigned long eachLogSize;
    static unsigned long lastFileNumber;

    static unsigned int REFRESH_RATE;
    static unsigned int BATCH_SIZE;

    Database();
    static std::pair<std::string,int> get(std::string key);
    static long long put(std::string key);
    static bool commit(std::string key, std::string value, long long commitIndex);
    static bool batchPut(std::vector<std::pair<std::string, std::string>>& batch);
    static void batchApply();
};

#endif //HAZELKV_DATABASE_H
