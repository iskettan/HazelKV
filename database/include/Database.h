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

class Database {
//private:
public:
    static std::unordered_map<std::string, std::string>* database;

    static std::queue<std::pair<std::string, std::string>> queuedTasks;
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
    static std::string get(std::string key);
    static bool put(std::string key, std::string value);

    static void batchPut();
};

#endif //HAZELKV_DATABASE_H
