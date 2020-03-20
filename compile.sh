#!/bin/bash
#
# ROS script compilazione
# ================================================================
#
cd $HOME/ros/catkin_ws
catkin_make -j1 
cd $HOME
source .bashrc
echo ""
echo "======================================================"
echo "=== Compilazione ultimata  ==="
echo "======================================================"
