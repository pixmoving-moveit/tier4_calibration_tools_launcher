#!/bin/bash
source ~/pix/pix-robobus/Autoware/install/setup.bash
ros2 bag record $(cat ${1:-topic_list.txt})  -b 2147483648  # 2,147,483,648 = 2G
