cmake_minimum_required(VERSION 3.22)
project(LLVMObfuscationPass)

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_STANDARD 23)
#if (POLICY CMP0075)
#    cmake_policy(SET CMP0075 NEW)
#endif ()
cmake_policy(VERSION 3.22)

# Required packages
find_package(PkgConfig REQUIRED)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_DIR}")

if (CMAKE_SYSTEM_NAME STREQUAL "Linux")
    find_package(LLVM REQUIRED CONFIG)
elseif (CMAKE_SYSTEM_NAME STREQUAL "Darwin")
    find_package(LLVM REQUIRED CONFIG)
else ()
    message(FATAL_ERROR "${CMAKE_SYSTEM_NAME} is not supported yet")
endif ()

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# LLVM_RTTI Configuration
if (NOT LLVM_ENABLE_RTTI)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif ()

list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

message("LLVM STATUS:
  Definitions ${LLVM_DEFINITIONS}
  Includes    ${LLVM_INCLUDE_DIRS}
  Libraries   ${LLVM_LIBRARY_DIRS}"
        )

include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
add_definitions(${LLVM_DEFINITIONS})

add_subdirectory(src)
