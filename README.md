# tier4_calibration_tools_launcher

## Overview
## Requirement
- Ubuntu22.04
- Ros Humble
- [Autoware](https://github.com/autowarefoundation/autoware) - (please see [source-installation](https://autowarefoundation.github.io/autoware-documentation/main/installation/autoware/source-installation/) page)

## Installation procedures
```shell
cd Autoware
wget https://raw.githubusercontent.com/pixmoving-moveit/tier4_calibration_tools_launcher/main/calibration_tools.repos
vcs import src < calibration_tools.repos
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
```
[中文文档](https://pixmoving-moveit.github.io/pixkit-documentation-cn/%E4%BC%A0%E6%84%9F%E5%99%A8%E6%A0%87%E5%AE%9A/%E6%A0%87%E5%AE%9A%E5%B7%A5%E5%85%B7%E5%AE%89%E8%A3%85/) ｜ [English document](https://pixmoving-moveit.github.io/pixkit-documentation-en/sensor-calibration/calibration_tool_installation/)

## Reference
- [tier4 CalibrationTools](https://github.com/tier4/CalibrationTools/tree/tier4/universe)
