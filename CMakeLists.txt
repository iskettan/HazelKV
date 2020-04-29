cmake_minimum_required(VERSION 3.16)
project(HazelKV)
set(CMAKE_CXX_STANDARD 20)
include(FetchContent)

FetchContent_Declare(
  gRPC
  GIT_REPOSITORY https://github.com/grpc/grpc
  GIT_TAG        v1.28.1
  )

FetchContent_Declare(
  spdlog
  GIT_REPOSITORY https://github.com/gabime/spdlog
  GIT_TAG        v1.5.0
  )


set(FETCHCONTENT_QUIET OFF)
FetchContent_MakeAvailable(gRPC)
FetchContent_MakeAvailable(spdlog)

set(_PROTOBUF_LIBPROTOBUF libprotobuf)
set(_REFLECTION grpc++_reflection)
set(_GRPC_GRPCPP grpc++)

include_directories(include)
include_directories(database/include)

add_executable(HazelKV main.cpp ConfigParser.cpp database/Database.cpp tests/ThroughputTest.cpp tests/ThroughputTest.h)

target_link_libraries(HazelKV spdlog)
target_link_libraries(HazelKV grpc++)
