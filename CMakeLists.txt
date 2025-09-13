cmake_minimum_required(VERSION 3.25)
project(babocar)

option(BUILD_TESTS "Option to build the module tests" ON)
option(BUILD_BENCHMARKS "Option to build the module benchmarks" ON)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_subdirectory(micro-utils)
add_subdirectory(firmware/control-panel)
add_subdirectory(firmware/line-detector)
add_subdirectory(firmware/motor-controller)

