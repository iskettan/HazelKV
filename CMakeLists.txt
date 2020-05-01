cmake_minimum_required(VERSION 3.16)
project(HazelKV)

set(CMAKE_CXX_STANDARD 17)


include(FetchContent)
FetchContent_Declare(
  spdlog
  GIT_REPOSITORY https://github.com/gabime/spdlog
  GIT_TAG        v1.5.0
  )
FetchContent_MakeAvailable(spdlog)

find_package(Protobuf)

protobuf_generate_cpp(PROTO_SRCS PROTO_HDRS proto/hazelKV.proto)

include_directories(cmake-build-debug)
include_directories(include)
include_directories(proto/)
include_directories(database/include)

add_executable(HazelKV   main.cpp ConfigParser.cpp database/Database.cpp tests/ThroughputTest.cpp Node.cpp
        ${PROTO_HDRS}
        ${PROTO_SRCS}
        )
target_link_libraries(HazelKV spdlog
        protobuf
        #grpc++_reflection libprotobuf grpc++
        )

