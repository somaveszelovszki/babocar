cmake_minimum_required(VERSION 3.10)
project(babocar)

option(BUILD_TESTS "Option to build the module tests" ON)

add_subdirectory(micro-utils)
add_subdirectory(firmware/control-panel)
add_subdirectory(firmware/line-detector)
add_subdirectory(firmware/motor-controller)

