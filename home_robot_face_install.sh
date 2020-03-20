#!/bin/bash
#
#
# ROS Installazione homer_robot_face
# ================================================================
#
sudo apt update
cd $HOME/src
git clone https://github.com/artigianitecnologici/homer_robot_face.git
cd $HOME/ros/catkin_ws/src
ln -s $HOME/src/homer_robot_face .
cd $HOME ros/catkin_ws/src
rosdep install homer_robot_face
cd $HOME/ros/catkin_ws
catkin_make -j1
source devel/setup.bash
echo "======================================================"
echo "=== Installazione homer robot face ultimata   ========"
echo "======================================================"
