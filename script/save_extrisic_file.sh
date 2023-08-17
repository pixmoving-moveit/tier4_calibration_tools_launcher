#!/bin/bash
package_name=individual_params
package_path=env  | tr ':' '\n' | grep ${package_name}| head -n 1
sensor_model=pixkit_sensor_kit

current_time=$(date +"%Y-%m%d-%H%M")
ros2 service call /extrinsic_calibration_manager tier4_calibration_msgs/srv/ExtrinsicCalibrationManager "
{
  src_path: ${package_path}/${package_name}/config/default/sensor_kit_calibration.yaml,
  dst_path: $HOME/sensor_kit_calibration-${current_time}.yaml
}"

echo "output calibration result file:$HOME/sensor_kit_calibration-${current_time}.yaml"
