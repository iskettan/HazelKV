/*
 *
 * Copyright 2015 gRPC authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#include <iostream>
#include <memory>
#include <string>
#include <thread>
#include <grpcpp/grpcpp.h>

#ifdef BAZEL_BUILD
#include "examples/protos/helloworld.grpc.pb.h"
#else
#include "hazelKV.grpc.pb.h"
#endif

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using hazelKVproto::HelloRequest;
using hazelKVproto::HelloReply;
using hazelKVproto::GetPutService;


class GreeterClient {
 public:
  GreeterClient(std::shared_ptr<Channel> channel)
      : stub_(GetPutService::NewStub(channel)) {}

  // Assembles the client's payload, sends it and presents the response back
  // from the server.
  std::string SayHello(const std::string& user) {
    // Data we are sending to the server.
    HelloRequest request;
    request.set_name(user);

    // Container for the data we expect from the server.
    HelloReply reply;

    // Context for the client. It could be used to convey extra information to
    // the server and/or tweak certain RPC behaviors.
    ClientContext context;

    // The actual RPC.
    Status status = stub_->SayHello(&context, request, &reply);

    // Act upon its status.
    if (status.ok()) {
      return reply.message();
    } else {
      std::cout << status.error_code() << ": " << status.error_message()
                << std::endl;
      return "RPC failed";
    }
  }

 private:
  std::unique_ptr<GetPutService::Stub> stub_;
};

void sendHelloWorld(){
    std::string target_str;
  target_str = "localhost:50051";
  GreeterClient greeter(grpc::CreateChannel(
  target_str, grpc::InsecureChannelCredentials()));
  std::string user("world");

  for(int i = 0; i < 10; i++){
      std::string reply = greeter.SayHello(user);
//      std::cout << "Greeter received: " << reply << std::endl;
  }
}
int main(int argc, char** argv) {
      std::string target_str;
      target_str = "localhost:50051";
      GreeterClient greeter(grpc::CreateChannel(
      target_str, grpc::InsecureChannelCredentials()));

      std::string reply = greeter.SayHello(user);

//    auto t1 = std::chrono::high_resolution_clock::now();
//
//
//    std::vector<std::thread> threadsVector(10000);
//    for(int i = 0; i < 10000; i++){
//        threadsVector[i] = std::thread(sendHelloWorld);
//    }
//    for(int i = 0; i < 10000; i++){
//        threadsVector[i].join();
//    }
//    auto t2 = std::chrono::high_resolution_clock::now();
//    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>( t2 - t1 ).count();
//
//    std::cout << "throughput: " <<  100000000.0/(duration);

  return 0;
}
