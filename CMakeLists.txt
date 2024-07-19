cmake_minimum_required(VERSION 3.22)
project(e_library VERSION 0.1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/")
option(USE_CONAN "Using Conan Packet Manager" ON)

if(USE_CONAN)
message(STATUS "Using Conan")
include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)
find_package(nlohmann_json REQUIRED)
find_package(fmt REQUIRED)
find_package(spdlog REQUIRED)
endif()


add_subdirectory(src)
