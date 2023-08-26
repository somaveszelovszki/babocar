#!/bin/bash

./build/micro-utils/test/micro_utils_test && \
./build/firmware/control-panel/test/control_panel_test && \
./build/firmware/line-detector/test/line_detector_test && \
./build/firmware/motor-controller/test/motor_controller_test