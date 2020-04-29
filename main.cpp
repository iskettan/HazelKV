#include <iostream>
#include "spdlog/spdlog.h"
#include "ConfigParser.h"
#include "Database.h"
#include <thread>
#include "tests/ThroughputTest.h"


int main(int argc, char *argv[]) { 
    ConfigParser::commandLineParser(argc, argv);

    std::thread logWriterThread(Database::batchPut);
    logWriterThread.detach();

    ThroughputTest t(0, 512, 1000000, 10000);
    t.calculateThroughput();
    return 0;
}
