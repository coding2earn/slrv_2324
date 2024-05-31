#!/bin/bash


gnome-terminal -- roscore &&
sleep 3

gnome-terminal -- roslaunch usb_cam usb_cam-test.launch &&
sleep 5

gnome-terminal -- rosrun tf2_ros static_transform_publisher 0.25 0.09 0.49 1.57 0 -3.14 /world /usb_cam &&
sleep 7

gnome-terminal -- roslaunch ar_track_alvar pr2_indiv_no_kinect.launch &&
sleep 7

gnome-terminal -- roslaunch open_manipulator_description open_manipulator_rviz.launch &&
sleep 10

gnome-terminal -- roslaunch open_manipulator_controller open_manipulator_controller.launch usb_port:=/dev/ttyACM0 baud_rate:=1000000 &&
sleep 7

gnome-terminal -- roslaunch open_manipulator_pick_and_place open_manipulator_pick_and_place.launch

#Use only gazebo simulation --> roslaunch open_manipulator_controller open_manipulator_controller.launch use_platform:=false
#Use GUI to control simulated arm on gazebo --> roslaunch open_manipulator_control_gui open_manipulator_control_gui.launch

