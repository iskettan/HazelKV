//
// Created by ibrahim on 2020-04-28.
//


#ifndef HAZELKV_CONFIGPARSER_H
#define HAZELKV_CONFIGPARSER_H
#include <iostream>
#include <string>
#include <fstream>

class ConfigParser {
public:
    static void parseConfig(std::string filePath);
    static void commandLineParser(int argc, char *argv[]);
    static void checkConfig();

};


#endif //HAZELKV_CONFIGPARSER_H
