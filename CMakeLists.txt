cmake_minimum_required(VERSION 3.5)
project(tier4_calibration_tools_launcher)

find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

install(
  PROGRAMS
  script/undistorted_image_node.py
  DESTINATION
  lib/${PROJECT_NAME}
)


ament_auto_package(
  INSTALL_TO_SHARE
  config
  launch
  script
  rviz
)
