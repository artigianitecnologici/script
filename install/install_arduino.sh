#!/usr/bin/env bash

RED='\e[41m'
GREEN='\e[42m'
RESET='\033[0m'

function echo_green {
    echo -e "\n${GREEN} $1 ${RESET}\n"
}

function echo_red {
    echo -e "\n${RED} $1 ${RESET}\n"
}


function install_arduino_dependencies {
	echo_green " Installing ARDUINO dependencies"

	echo_green " Installing ARDUINO IDE"
    mkdir ~/Arduino
    cd ~/Arduino
    # https://tttapa.github.io/Pages/Ubuntu/Software-Installation/Arduino/Arduino-IDE.html
    wget https://downloads.arduino.cc/arduino-1.8.10-linux64.tar.xz
    tar -xf arduino-1.8.10-linux64.tar.xz
    cd arduino*/
    sudo ./install.sh
    rm ../arduino-1.8.10.tar.xz

    echo_green " Installing ARDUINO ROS dependencies"
    sudo apt-get install ros-melodic-rosserial-arduino -y
    sudo apt-get install ros-melodic-rosserial -y
	echo_green " Installing ARDUINO dependencies...DONE"
}


function main {

    install_arduino_dependencies
    
}


main
