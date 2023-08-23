# tier4_calibration_tools_launcher

## Overview
## Requirement
- Ubuntu22.04
- Ros Humble
- [Autoware](https://github.com/autowarefoundation/autoware) - (please see [source-installation](https://autowarefoundation.github.io/autoware-documentation/main/installation/autoware/source-installation/) page)

## Installation procedures
```shell
cd Autoware
wget https://github.com/pixmoving-moveit/tier4_calibration_tools_launcher/blob/main/calibration_tools.repos 
vcs import src < calibration_tools.repos
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
```

## Reference
- [tier4 CalibrationTools](https://github.com/tier4/CalibrationTools/tree/tier4/universe)