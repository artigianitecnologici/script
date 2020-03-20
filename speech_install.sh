#!/bin/bash
#
# ROS Install speech
# ================================================================
#
sudo apt updat
# 
cd $HOME/src
git clone https://github.com/artigianitecnologici/speech.git
cd $HOME/ros/catkin_ws/src 
ln -s $HOME/src/speech .
sudo chmod +x $HOME/ros/catkin_ws/src/speech/cfg/speech.cfg
cd $HOME/ros/catkin_ws
catkin_make -j1 
cd $HOME
source .bashrc
echo ""
echo "======================================================"
echo "=== MARRtino Speech installation complete ==="
echo "======================================================"
echo ""
