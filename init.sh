#!/bin/bash

export ROS_HOSTNAME=localhost
export ROS_MASTER_URI=http://localhost:11311
export ROS_PORT_SIM=11311
export GAZEBO_RESOURCE_PATH=~/DRL-robot-navigation/catkin_ws/src/multi_robot_scenario/launch
source ../.bashrc
cd catkin_world_ws
source devel/setup.bash
cd ../catkin_ws
source devel_isolated/setup.bash
echo "done"