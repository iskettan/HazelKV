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
CMAKE_SOURCE_DIR = /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild

# Utility rule file for spdlog-populate.

# Include the progress variables for this target.
include CMakeFiles/spdlog-populate.dir/progress.make

CMakeFiles/spdlog-populate: CMakeFiles/spdlog-populate-complete


CMakeFiles/spdlog-populate-complete: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-install
CMakeFiles/spdlog-populate-complete: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-mkdir
CMakeFiles/spdlog-populate-complete: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-download
CMakeFiles/spdlog-populate-complete: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-update
CMakeFiles/spdlog-populate-complete: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-patch
CMakeFiles/spdlog-populate-complete: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-configure
CMakeFiles/spdlog-populate-complete: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-build
CMakeFiles/spdlog-populate-complete: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-install
CMakeFiles/spdlog-populate-complete: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'spdlog-populate'"
	/snap/clion/112/bin/cmake/linux/bin/cmake -E make_directory /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles
	/snap/clion/112/bin/cmake/linux/bin/cmake -E touch /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles/spdlog-populate-complete
	/snap/clion/112/bin/cmake/linux/bin/cmake -E touch /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-done

spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-install: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'spdlog-populate'"
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-build && /snap/clion/112/bin/cmake/linux/bin/cmake -E echo_append
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-build && /snap/clion/112/bin/cmake/linux/bin/cmake -E touch /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-install

spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'spdlog-populate'"
	/snap/clion/112/bin/cmake/linux/bin/cmake -E make_directory /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-src
	/snap/clion/112/bin/cmake/linux/bin/cmake -E make_directory /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-build
	/snap/clion/112/bin/cmake/linux/bin/cmake -E make_directory /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix
	/snap/clion/112/bin/cmake/linux/bin/cmake -E make_directory /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/tmp
	/snap/clion/112/bin/cmake/linux/bin/cmake -E make_directory /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp
	/snap/clion/112/bin/cmake/linux/bin/cmake -E make_directory /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src
	/snap/clion/112/bin/cmake/linux/bin/cmake -E make_directory /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp
	/snap/clion/112/bin/cmake/linux/bin/cmake -E touch /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-mkdir

spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-download: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-gitinfo.txt
spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-download: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'spdlog-populate'"
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps && /snap/clion/112/bin/cmake/linux/bin/cmake -P /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/tmp/spdlog-populate-gitclone.cmake
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps && /snap/clion/112/bin/cmake/linux/bin/cmake -E touch /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-download

spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-update: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'spdlog-populate'"
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-src && /snap/clion/112/bin/cmake/linux/bin/cmake -P /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/tmp/spdlog-populate-gitupdate.cmake

spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-patch: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'spdlog-populate'"
	/snap/clion/112/bin/cmake/linux/bin/cmake -E echo_append
	/snap/clion/112/bin/cmake/linux/bin/cmake -E touch /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-patch

spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-configure: spdlog-populate-prefix/tmp/spdlog-populate-cfgcmd.txt
spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-configure: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-update
spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-configure: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'spdlog-populate'"
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-build && /snap/clion/112/bin/cmake/linux/bin/cmake -E echo_append
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-build && /snap/clion/112/bin/cmake/linux/bin/cmake -E touch /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-configure

spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-build: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No build step for 'spdlog-populate'"
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-build && /snap/clion/112/bin/cmake/linux/bin/cmake -E echo_append
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-build && /snap/clion/112/bin/cmake/linux/bin/cmake -E touch /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-build

spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-test: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'spdlog-populate'"
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-build && /snap/clion/112/bin/cmake/linux/bin/cmake -E echo_append
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-build && /snap/clion/112/bin/cmake/linux/bin/cmake -E touch /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-test

spdlog-populate: CMakeFiles/spdlog-populate
spdlog-populate: CMakeFiles/spdlog-populate-complete
spdlog-populate: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-install
spdlog-populate: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-mkdir
spdlog-populate: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-download
spdlog-populate: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-update
spdlog-populate: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-patch
spdlog-populate: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-configure
spdlog-populate: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-build
spdlog-populate: spdlog-populate-prefix/src/spdlog-populate-stamp/spdlog-populate-test
spdlog-populate: CMakeFiles/spdlog-populate.dir/build.make

.PHONY : spdlog-populate

# Rule to build all files generated by this target.
CMakeFiles/spdlog-populate.dir/build: spdlog-populate

.PHONY : CMakeFiles/spdlog-populate.dir/build

CMakeFiles/spdlog-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/spdlog-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/spdlog-populate.dir/clean

CMakeFiles/spdlog-populate.dir/depend:
	cd /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild /home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/spdlog-subbuild/CMakeFiles/spdlog-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/spdlog-populate.dir/depend

