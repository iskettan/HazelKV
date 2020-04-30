//
// Created by ibrahim on 2020-04-30.
//

#ifndef HAZELKV_NODE_H
#define HAZELKV_NODE_H
#include <string>

class Node {
public:
    static std::string nodeIp;
    static unsigned short nodePort;
    static void catchUp();
};


#endif //HAZELKV_NODE_H
