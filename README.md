# babocar
Self-driving hardware and software.

This project contains all the necessary circuits, custom-designed 3D elements, embedded firmware and debugging tools for an RC car able to perform self-driving tasks.

Please note that the project is a work in progress, therefore if using parts of it for your own project, apply it with caution, as it may contain malfunctioning code.

## Directories:

3d-models/
SketchUp and Autodesk Fusion 360 models of the 3D-printed elements of the car.

circuit/
Schematics and PCB layouts created in Altium Designer.

docs/
Thorough thesis about the algorithms used for the localization and navigation of the car.

firmware/
Separate projects for all the embedded sub-systems of the project (e.g. motor controller panel, distance sensor handler).

micro-utils/
Portable embedded C++ utility library.

monitor/
Raspberry Pi web server for monitoring and debugging.

thirdparty/
Necessary third-party libraries.

## Scripts:

checkout.sh
Checks out latest states of the development branch for each subdirectories.

build.sh
Builds unit tests for the firmware subprojects using the build platform as target.