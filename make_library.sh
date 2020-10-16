#!/usr/bin/env bash

cd $HOME
cd Arduino/libraries
rm -rf ros_lib
rosrun rosserial_arduino make_libraries.py .

