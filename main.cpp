#include <iostream>
#include "spdlog/spdlog.h"
#include "ConfigParser.h"
#include "Database.h"
#include <thread>
#include "tests/ThroughputTest.h"
#include "Node.h"
#include "hazelKV.pb.h"


int main(int argc, char *argv[]) {




    ConfigParser::commandLineParser(argc, argv);
    ConfigParser::checkConfig();
    spdlog::info("Node: " + Node::nodeIp + ":" + std::to_string(Node::nodePort)+" started running.");
    //Node::catchUp();

    std::thread logWriterThread(Database::batchApply);
    logWriterThread.detach();

    helloworld::HelloRequest r;
    r.set_name("batata");
    std::string tmp = r.SerializePartialAsString();
    spdlog::info(tmp);

    helloworld::HelloRequest r2;
    r2.ParseFromString(tmp);

    spdlog::info(r2.name());


//    ThroughputTest t(95, 5, 100000000, 10000);
//    t.calculateThroughput();
    return 0;
}
