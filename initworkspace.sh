#!/bin/bash
#
# ROS init workspace
# ================================================================
#
cd $HOME/ros
mkdir -p catkin_ws/src
cd cakin_ws/src
cd ..
catkin_make
source devel/setup.bash
echo ""
echo "======================================================"
echo "=== creazione workspace ultimato                   ==="
echo "======================================================"
