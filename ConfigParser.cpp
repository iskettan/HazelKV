//
// Created by ibrahim on 2020-04-28.
//

#include "ConfigParser.h"
#include <iostream>
#include <string>
#include <fstream>
#include "spdlog/spdlog.h"
#include <filesystem>
#include "Database.h"
#include "Node.h"

/**
 * Set the logging level.
 *
 * @param filePath a string to the config file path
 */
void setLogLevel(std::string logLevel) {
    spdlog::set_pattern("[%H:%M:%f] [%^%l%$] [Th: %t] %v");

    if (logLevel == "debug")
        spdlog::set_level(spdlog::level::debug);
    else if (logLevel == "info")
        spdlog::set_level(spdlog::level::info);
    else if (logLevel == "error")
        spdlog::set_level(spdlog::level::err);
    else if (logLevel == "critical")
        spdlog::set_level(spdlog::level::critical);
    else if (logLevel == "off")
        spdlog::set_level(spdlog::level::off);
    else
        spdlog::error("wrong LOG_LEVEL, using default values");


}

/**
 * Set the logging level.
 *
 * @param filePath a string to the config file path
 */
void setReliability(std::string reliability) {
    if (reliability == "cache") {
        Database::isReliable = false;
        spdlog::info("System is running in unreliable/cache mode");
    } else {
        Database::isReliable = true;
        spdlog::info("System is running in reliable config");
    }
}

void setRedoLogSizePerFile(int logSize) {
    Database::eachLogSize = logSize * 1024 * 1024; // Convert from MB to B
    spdlog::info("Setting log size per file to: " + std::to_string(logSize) + "MB.");
}

void setBatchSize(unsigned int batchSize) {
    Database::BATCH_SIZE = batchSize;
    spdlog::info("Setting BATCH_SIZE to: " + std::to_string(Database::BATCH_SIZE));
}

void setRefreshRate(int rate) {
    Database::REFRESH_RATE = rate;
    spdlog::info("Setting REFRESH_RATE to: " + std::to_string(Database::REFRESH_RATE));
}
void setNodeIP(std::string ipAndPort){
    Node::nodeIp = ipAndPort.substr(0,ipAndPort.find(":"));
    Node::nodePort = (unsigned short) stoi(ipAndPort.substr(ipAndPort.find(":") + 1));
    spdlog::info("Node Ip: " + Node::nodeIp);
    spdlog::info("Node Port: " + std::to_string(Node::nodePort));
}

void setReliablePath(std::string path){
    Database::logPath = path;
    spdlog::info("Redo log path is set to: " + path);
}
/**
 * Parse the config file.
 *
 * @param filePath a string to the config file path
 */
void ConfigParser::parseConfig(std::string filePath) {
    if (!std::filesystem::exists(filePath)) {
        spdlog::error("config file path is wrong");
        return;
    }

    std::ifstream infile(filePath);
    std::string line;
    while (std::getline(infile, line)) {
        std::istringstream iss(line);
        std::string key, value;
        iss >> key >> value;

        if (key == "LOG_LEVEL")
            setLogLevel(value);
        else if (key == "RELIABILITY")
            setReliability(value);
        else if(key == "RELIABLE_PATH")
            setReliablePath(value);
        else if (key == "REDO_LOG_SIZE_PER_FILE")
            setRedoLogSizePerFile(stoi(value));
        else if (key == "BATCH_SIZE") {
            setBatchSize(stoi(value));
        } else if (key == "REFRESH_RATE") {
            setRefreshRate(stoi(value));
        }
        else if(key == "NODE_IP")
            setNodeIP(value);
    }
}

/**
 * Parse the commandline arguments.
 *
 * @param argc number of arguments
 * @param argv array of arguments
 */
void ConfigParser::commandLineParser(int argc, char *argv[]) {
    if (argc == 1)
        spdlog::error("Please, provide a config file!");
    else if (argc == 2)
        ConfigParser::parseConfig(argv[1]);
    else
        spdlog::error("Wrong number of arguments has been given");
}

void ConfigParser::checkConfig(){
    if(Node::nodeIp == "" || Node::nodePort == 0){
        spdlog::critical("You must provide node ip and port in the config file");
        exit(-1);
    }
    if(Database::isReliable && Database::logPath == ""){
        spdlog::critical("Since HazelKV is running in reliable mode, You must provide a path for the redo log in config file");
        exit(-1);
    }
}
