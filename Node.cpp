//
// Created by ibrahim on 2020-04-30.
//

#include <Database.h>
#include "Node.h"
#include <filesystem>
#include <set>
#include "spdlog/spdlog.h"
#include <fstream>

std::string Node::nodeIp = "";
unsigned short Node::nodePort = 0;

struct fileSortingComparator {
    bool operator()(const std::string &f1, const std::string &f2) const {
        return stoi(f1.substr(f1.find("_") + 1)) < stoi(f2.substr(f2.find("_") + 1));
    }
};

std::set<std::string, fileSortingComparator> fileLogsSet;

void Node::catchUp() {

    if (Database::isReliable) {
        spdlog::info("Started recovory");
        for (const auto &entry : std::filesystem::directory_iterator(Database::logPath))
            fileLogsSet.insert(entry.path());

        std::string keyLine;
        std::string valueLine;
        std::string checksumLine;

        for (std::string file : fileLogsSet) {
            std::ifstream infile(file);

            while (std::getline(infile, keyLine)) {
                if (keyLine.substr(0, 3) == "K: ") {
                    keyLine = keyLine.substr(3);
                    if (std::getline(infile, valueLine)) {
                        if (valueLine.substr(0, 3) == "V: ") {
                            valueLine = valueLine.substr(3);

                            if (std::getline(infile, checksumLine)) {
                                checksumLine = checksumLine.substr(3);

                                if (std::to_string(
                                        std::hash<std::string>{}(keyLine) + std::hash<std::string>{}(valueLine)) ==
                                    checksumLine) {
                                    (*Database::database)[keyLine] = valueLine;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    spdlog::info("Finished recovory. Now this node is joining");

}