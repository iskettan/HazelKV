//
// Created by ibrahim on 2020-04-28.
//

#ifndef HAZELKV_THROUGHPUTTEST_H
#define HAZELKV_THROUGHPUTTEST_H

#include <iostream>
#include <thread>
#include <vector>

class ThroughputTest {
    int numberOfReaders;
    int numberOfWriters;
    int numberOfOperations;
    int numberOfKeys;
    std::vector<std::thread> readers;
    std::vector<std::thread> writers;

public:
    ThroughputTest(int numberOfReaders = 0, int numberOfWiters = 0, int numberOfOperations = 0, int numberOfKeys = 0);
    int calculateThroughput();
    int simpleCorrecnessCheck();

};


#endif //HAZELKV_THROUGHPUTTEST_H
