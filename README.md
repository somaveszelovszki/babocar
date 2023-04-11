# babocar
This project contains all the necessary circuits designs, custom-designed 3D-printed elements, embedded firmware and debugging tools for an RC car that is able to perform self-driving tasks such as following guiding lines and pre-defined routes.

[<img src="https://github.com/somaveszelovszki/babocar/blob/master/docs/babocar.jpg" width="600">](https://www.youtube.com/watch?v=wYXTI0n2l1o&ab_channel=BMEVIKRobonAUT)

An example of the car performing these tasks can be viewed on this [link](https://www.youtube.com/watch?v=wYXTI0n2l1o&ab_channel=BMEVIKRobonAUT)

## Directories:
|Directory     |Role                                                                                      |
|--------------|------------------------------------------------------------------------------------------|
| 3d-models/   | SketchUp and Autodesk Fusion 360 models of the 3D-printed elements of the car         |
| circuit/     | Schematics and PCB layouts created in Altium Designer                                    |
| docs/        | Thorough thesis about the algorithms used for the localization and navigation of the car |
| firmware/    | Separate projects for all the embedded sub-systems                                       |
| micro-utils/ | Portable embedded C++ utility library                                                    |
| monitor/     | Raspberry Pi web server for monitoring and debugging                                     |
| thirdparty/  | Necessary third-party libraries                                                          |

## Scripts:

| Script      | Function                                                                          |
|-------------|-----------------------------------------------------------------------------------|
| checkout.sh | Checks out latest states of the development branch for each subdirectories        |
| build.sh    | Builds unit tests for the firmware subprojects using the build platform as target |
