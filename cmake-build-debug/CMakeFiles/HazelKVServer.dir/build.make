# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/112/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/112/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ibrahim/Hazel/HazelKV

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ibrahim/Hazel/HazelKV/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/HazelKVServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HazelKVServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HazelKVServer.dir/flags.make

hazelKV.pb.cc: ../proto/hazelKV.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating hazelKV.pb.cc, hazelKV.pb.h, hazelKV.grpc.pb.cc, hazelKV.grpc.pb.h"
	_deps/grpc-build/third_party/protobuf/protoc-3.11.2.0 --grpc_out /home/ibrahim/Hazel/HazelKV/cmake-build-debug --cpp_out /home/ibrahim/Hazel/HazelKV/cmake-build-debug -I /home/ibrahim/Hazel/HazelKV/proto --plugin=protoc-gen-grpc="/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/grpc-build/grpc_cpp_plugin" /home/ibrahim/Hazel/HazelKV/proto/hazelKV.proto

hazelKV.pb.h: hazelKV.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate hazelKV.pb.h

hazelKV.grpc.pb.cc: hazelKV.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate hazelKV.grpc.pb.cc

hazelKV.grpc.pb.h: hazelKV.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate hazelKV.grpc.pb.h

CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.o: CMakeFiles/HazelKVServer.dir/flags.make
CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.o: ../proto/serverTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.o -c /home/ibrahim/Hazel/HazelKV/proto/serverTest.cpp

CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibrahim/Hazel/HazelKV/proto/serverTest.cpp > CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.i

CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibrahim/Hazel/HazelKV/proto/serverTest.cpp -o CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.s

CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.o: CMakeFiles/HazelKVServer.dir/flags.make
CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.o: ../ConfigParser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.o -c /home/ibrahim/Hazel/HazelKV/ConfigParser.cpp

CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibrahim/Hazel/HazelKV/ConfigParser.cpp > CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.i

CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibrahim/Hazel/HazelKV/ConfigParser.cpp -o CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.s

CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.o: CMakeFiles/HazelKVServer.dir/flags.make
CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.o: hazelKV.grpc.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.o -c /home/ibrahim/Hazel/HazelKV/cmake-build-debug/hazelKV.grpc.pb.cc

CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibrahim/Hazel/HazelKV/cmake-build-debug/hazelKV.grpc.pb.cc > CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.i

CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibrahim/Hazel/HazelKV/cmake-build-debug/hazelKV.grpc.pb.cc -o CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.s

CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.o: CMakeFiles/HazelKVServer.dir/flags.make
CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.o: hazelKV.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.o -c /home/ibrahim/Hazel/HazelKV/cmake-build-debug/hazelKV.pb.cc

CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibrahim/Hazel/HazelKV/cmake-build-debug/hazelKV.pb.cc > CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.i

CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibrahim/Hazel/HazelKV/cmake-build-debug/hazelKV.pb.cc -o CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.s

CMakeFiles/HazelKVServer.dir/database/Database.cpp.o: CMakeFiles/HazelKVServer.dir/flags.make
CMakeFiles/HazelKVServer.dir/database/Database.cpp.o: ../database/Database.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/HazelKVServer.dir/database/Database.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HazelKVServer.dir/database/Database.cpp.o -c /home/ibrahim/Hazel/HazelKV/database/Database.cpp

CMakeFiles/HazelKVServer.dir/database/Database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HazelKVServer.dir/database/Database.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibrahim/Hazel/HazelKV/database/Database.cpp > CMakeFiles/HazelKVServer.dir/database/Database.cpp.i

CMakeFiles/HazelKVServer.dir/database/Database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HazelKVServer.dir/database/Database.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibrahim/Hazel/HazelKV/database/Database.cpp -o CMakeFiles/HazelKVServer.dir/database/Database.cpp.s

CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.o: CMakeFiles/HazelKVServer.dir/flags.make
CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.o: ../tests/ThroughputTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.o -c /home/ibrahim/Hazel/HazelKV/tests/ThroughputTest.cpp

CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibrahim/Hazel/HazelKV/tests/ThroughputTest.cpp > CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.i

CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibrahim/Hazel/HazelKV/tests/ThroughputTest.cpp -o CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.s

CMakeFiles/HazelKVServer.dir/Node.cpp.o: CMakeFiles/HazelKVServer.dir/flags.make
CMakeFiles/HazelKVServer.dir/Node.cpp.o: ../Node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/HazelKVServer.dir/Node.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HazelKVServer.dir/Node.cpp.o -c /home/ibrahim/Hazel/HazelKV/Node.cpp

CMakeFiles/HazelKVServer.dir/Node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HazelKVServer.dir/Node.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibrahim/Hazel/HazelKV/Node.cpp > CMakeFiles/HazelKVServer.dir/Node.cpp.i

CMakeFiles/HazelKVServer.dir/Node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HazelKVServer.dir/Node.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibrahim/Hazel/HazelKV/Node.cpp -o CMakeFiles/HazelKVServer.dir/Node.cpp.s

# Object files for target HazelKVServer
HazelKVServer_OBJECTS = \
"CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.o" \
"CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.o" \
"CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.o" \
"CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.o" \
"CMakeFiles/HazelKVServer.dir/database/Database.cpp.o" \
"CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.o" \
"CMakeFiles/HazelKVServer.dir/Node.cpp.o"

# External object files for target HazelKVServer
HazelKVServer_EXTERNAL_OBJECTS =

HazelKVServer: CMakeFiles/HazelKVServer.dir/proto/serverTest.cpp.o
HazelKVServer: CMakeFiles/HazelKVServer.dir/ConfigParser.cpp.o
HazelKVServer: CMakeFiles/HazelKVServer.dir/hazelKV.grpc.pb.cc.o
HazelKVServer: CMakeFiles/HazelKVServer.dir/hazelKV.pb.cc.o
HazelKVServer: CMakeFiles/HazelKVServer.dir/database/Database.cpp.o
HazelKVServer: CMakeFiles/HazelKVServer.dir/tests/ThroughputTest.cpp.o
HazelKVServer: CMakeFiles/HazelKVServer.dir/Node.cpp.o
HazelKVServer: CMakeFiles/HazelKVServer.dir/build.make
HazelKVServer: CMakeFiles/HazelKVServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable HazelKVServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HazelKVServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HazelKVServer.dir/build: HazelKVServer

.PHONY : CMakeFiles/HazelKVServer.dir/build

CMakeFiles/HazelKVServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HazelKVServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HazelKVServer.dir/clean

CMakeFiles/HazelKVServer.dir/depend: hazelKV.pb.cc
CMakeFiles/HazelKVServer.dir/depend: hazelKV.pb.h
CMakeFiles/HazelKVServer.dir/depend: hazelKV.grpc.pb.cc
CMakeFiles/HazelKVServer.dir/depend: hazelKV.grpc.pb.h
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ibrahim/Hazel/HazelKV /home/ibrahim/Hazel/HazelKV /home/ibrahim/Hazel/HazelKV/cmake-build-debug /home/ibrahim/Hazel/HazelKV/cmake-build-debug /home/ibrahim/Hazel/HazelKV/cmake-build-debug/CMakeFiles/HazelKVServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HazelKVServer.dir/depend

