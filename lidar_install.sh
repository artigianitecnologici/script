#!/bin/bash
#
# ROS Install lidar
# ================================================================
#
sudo apt update 
# 
cd $HOME/src
git clone  https://github.com/Slamtec/rplidar_ros.git
cd $HOME/ros/catkin_ws/src 
ln -s $HOME/src/rplidar_ros/ .
cd $HOME/ros/catkin_ws
catkin_make -j1 
cd $HOME
source .bashrc
echo ""
echo "======================================================"
echo "=== MARRtino Lidar installation complete           ==="
echo "======================================================"
echo ""
