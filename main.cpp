#include <iostream>
#include "spdlog/spdlog.h"
#include "ConfigParser.h"
#include "Database.h"
#include <thread>
#include "tests/ThroughputTest.h"
#include "Node.h"
#include<stdio.h>
#include<stdlib.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<string.h>
#include <arpa/inet.h>
#include <fcntl.h> // for open
#include <unistd.h> // for close


#include <iostream>
#include <memory>
#include <string>

#include <grpcpp/health_check_service_interface.h>
#include <grpcpp/ext/proto_server_reflection_plugin.h>

#include <grpcpp/grpcpp.h>
#include <grpcpp/health_check_service_interface.h>
#include <grpcpp/ext/proto_server_reflection_plugin.h>

#include "hazelKV.grpc.pb.h"
#include "hazelKV.pb.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using hazelKVproto::HelloRequest;
using hazelKVproto::HelloReply;
using hazelKVproto::getRequest;
using hazelKVproto::getResponse;
using hazelKVproto::putRequest;
using hazelKVproto::putResponse;
using hazelKVproto::commitRequest;
using hazelKVproto::commitResponse;
using hazelKVproto::GetPutService;

// Logic and data behind the server's behavior.
class GetPutServiceImpl final : public GetPutService::Service {
  Status SayHello(ServerContext* context, const HelloRequest* request,
                  HelloReply* reply) override {
    std::string prefix("Hello ");
//    long long potentialCommitIndex = Database::put("key");
    reply->set_message(prefix + request->name());
    return Status::OK;
  }

    Status sendGetRequest(ServerContext* context, const getRequest* request,
                  getResponse* reply) override {

        auto response = Database::get(request->key());
        reply -> set_key(request->key());
        reply -> set_value(response.first);
        reply -> set_commitedsequencenumber(response.second);
        return Status::OK;
  }

    Status sendPutRequest(ServerContext* context, const putRequest* request,
                  putResponse* reply) override {
        reply -> set_potentialcommitindex(Database::put(request->key()));
        return Status::OK;
  }

    Status sendCommitRequest(ServerContext* context, const commitRequest* request,
                  commitResponse* reply) override {
        Database::commit(request->key(), request->value(), request->commitindex());
        return Status::OK;
  }

};




int main(int argc, char *argv[]) {

    ConfigParser::commandLineParser(argc, argv);
    ConfigParser::checkConfig();
    spdlog::info("Node: " + Node::nodeIp + ":" + std::to_string(Node::nodePort) + " started running.");
    //Node::catchUp();

    std::thread logWriterThread(Database::batchApply);
    logWriterThread.detach();



//
//    spdlog::info(r2.name());
//
//    ThroughputTest t(95, 5, 100000000, 10000);
//    t.calculateThroughput();

  std::string server_address("0.0.0.0:50051");
  GetPutServiceImpl service;

  grpc::EnableDefaultHealthCheckService(true);
  grpc::reflection::InitProtoReflectionServerBuilderPlugin();
  ServerBuilder builder;
  // Listen on the given address without any authentication mechanism.
  builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
  // Register "service" as the instance through which we'll communicate with
  // clients. In this case it corresponds to an *synchronous* service.
  builder.RegisterService(&service);
  // Finally assemble the server.
  std::unique_ptr<Server> server(builder.BuildAndStart());
  std::cout << "Server listening on " << server_address << std::endl;

  // Wait for the server to shutdown. Note that some other thread must be
  // responsible for shutting down the server for this call to ever return.
  server->Wait();

    return 0;
}

