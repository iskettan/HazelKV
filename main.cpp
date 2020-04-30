#include <iostream>
#include "spdlog/spdlog.h"
#include "ConfigParser.h"
#include "Database.h"
#include <thread>
#include "tests/ThroughputTest.h"
#include "Node.h"


int main(int argc, char *argv[]) {
    ConfigParser::commandLineParser(argc, argv);
    ConfigParser::checkConfig();
    spdlog::info("Node: " + Node::nodeIp + ":" + std::to_string(Node::nodePort)+" started running.");
    Node::catchUp();

    std::thread logWriterThread(Database::batchApply);
    logWriterThread.detach();



    ThroughputTest t(95, 5, 10000000, 100000);
    t.calculateThroughput();
    t.calculateThroughput();
    return 0;
}
