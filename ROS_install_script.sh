#!/bin/bash

#install ROS with the script provided in the below command.
#sudo apt update
wget https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/install_ros_noetic.sh
chmod 755 ./install_ros_noetic.sh
bash ./install_ros_noetic.sh

#The following commands will download OpenMANIPULATOR-X package source codes and build them.
source ~/.bashrc
sudo apt-get install ros-noetic-ros-controllers ros-noetic-gazebo* ros-noetic-moveit* ros-noetic-industrial-core
sudo apt install ros-noetic-dynamixel-sdk ros-noetic-dynamixel-workbench*
sudo apt install ros-noetic-robotis-manipulator

cd ~/catkin_ws/src/
git clone -b noetic-devel https://github.com/ROBOTIS-GIT/open_manipulator.git
git clone -b noetic-devel https://github.com/ROBOTIS-GIT/open_manipulator_msgs.git
git clone -b noetic-devel https://github.com/ROBOTIS-GIT/open_manipulator_simulations.git
git clone https://github.com/ROBOTIS-GIT/open_manipulator_dependencies.git
cd ~/catkin_ws && catkin_make