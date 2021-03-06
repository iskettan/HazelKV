#include "ThroughputTest.h"
#include <iostream>
#include <thread>
#include <vector>
#include "Database.h"
#include "spdlog/spdlog.h"
#include <chrono>

ThroughputTest::ThroughputTest(int numberOfReaders, int numberOfWriters, int numberOfOperations, int numberOfKeys) :
        numberOfReaders(numberOfReaders), numberOfWriters(numberOfWriters),
        numberOfOperations(numberOfOperations), numberOfKeys(numberOfKeys) {

    readers = std::vector<std::thread>(numberOfReaders);
    writers = std::vector<std::thread>(numberOfWriters);

}

void testGet(int numberOfOperations, int numberOfKeys) {
    for (int i = 0; i < numberOfOperations; i++) {
        int key = i % numberOfKeys;
        Database::get(std::to_string(key));
    }
}

void testPut(int numberOfOperations, int numberOfKeys) {

    std::vector<std::pair<std::string, std::string>> keyValueBatch(Database::BATCH_SIZE);
    for (int i = 0; i < numberOfOperations; i++) {
        keyValueBatch[i % Database::BATCH_SIZE] = {std::to_string(rand() % numberOfKeys), std::to_string(i)};
//        if (i % Database::BATCH_SIZE == Database::BATCH_SIZE - 1)
//            Database::batchPut(keyValueBatch);
    }

}

int ThroughputTest::calculateThroughput() {
    int operationsPerThread = static_cast<double>(numberOfOperations) / (numberOfReaders + numberOfWriters);
    spdlog::info("Starting Test");
    spdlog::info("Number of operations per thread: " + std::to_string(operationsPerThread));


    auto t_start = std::chrono::high_resolution_clock::now();

    for (int i = 0; i < numberOfReaders; i++) {
        readers[i] = std::thread(testGet, operationsPerThread, numberOfKeys);
    }
    for (int i = 0; i < numberOfWriters; i++) {
        writers[i] = std::thread(testPut, operationsPerThread, numberOfKeys);
    }

    for (int i = 0; i < numberOfReaders; i++) {
        readers[i].join();
    }

    for (int i = 0; i < numberOfWriters; i++) {
        writers[i].join();
    }

    auto t_end = std::chrono::high_resolution_clock::now();
    double elapsed_time_ms = std::chrono::duration<double, std::milli>(t_end - t_start).count();

    spdlog::info("Throughput: " + std::to_string(numberOfOperations / elapsed_time_ms * 1000.0));

    return 0;
}

//
//int ThroughputTest::simpleCorrecnessCheck() {
//
//    for (int i = 0; i < numberOfOperations; i++) {
//        std::string key = std::to_string(rand() % numberOfKeys);
//        std::string value = std::to_string(i);
//        Database::put(key, value);
//        if (Database::get(key) != value) {
//            spdlog::critical("CORRECTNESS ERROR!");
//            spdlog::critical(Database::get(key) + "!=" +value);
//            assert(false);
//        }
//
//
//    }
//
//    return 0;
//}