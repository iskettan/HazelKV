#include <iostream>
#include "spdlog/spdlog.h"
#include "ConfigParser.h"
#include "Database.h"
#include <thread>
#include "tests/ThroughputTest.h"


int main(int argc, char *argv[]) {
    ConfigParser::commandLineParser(argc, argv);

    std::thread logWriterThread(Database::batchApply);
    logWriterThread.detach();

    ThroughputTest t(20, 2, 100000, 1000);
    t.calculateThroughput();
    return 0;
}
