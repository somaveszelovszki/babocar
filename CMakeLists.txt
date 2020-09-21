cmake_minimum_required(VERSION 3.10)
project(babocar)

add_subdirectory(thirdparty/gtest)
add_subdirectory(micro-utils)
add_subdirectory(firmware/control-panel)
add_subdirectory(firmware/line-detector)
add_subdirectory(firmware/motor-controller)

