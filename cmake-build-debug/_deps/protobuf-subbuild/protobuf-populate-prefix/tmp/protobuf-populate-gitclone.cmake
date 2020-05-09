
if(NOT "/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-subbuild/protobuf-populate-prefix/src/protobuf-populate-stamp/protobuf-populate-gitinfo.txt" IS_NEWER_THAN "/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-subbuild/protobuf-populate-prefix/src/protobuf-populate-stamp/protobuf-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-subbuild/protobuf-populate-prefix/src/protobuf-populate-stamp/protobuf-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout "https://github.com/protocolbuffers/protobuf" "protobuf-src"
    WORKING_DIRECTORY "/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/protocolbuffers/protobuf'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout v3.11.4 --
  WORKING_DIRECTORY "/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'v3.11.4'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-src"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-subbuild/protobuf-populate-prefix/src/protobuf-populate-stamp/protobuf-populate-gitinfo.txt"
    "/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-subbuild/protobuf-populate-prefix/src/protobuf-populate-stamp/protobuf-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/ibrahim/Hazel/HazelKV/cmake-build-debug/_deps/protobuf-subbuild/protobuf-populate-prefix/src/protobuf-populate-stamp/protobuf-populate-gitclone-lastrun.txt'")
endif()

