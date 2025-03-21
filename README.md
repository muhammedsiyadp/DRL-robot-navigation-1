# DRL-robot-navigation


Deep Reinforcement Learning for mobile robot navigation in ROS Gazebo simulator. Using Twin Delayed Deep Deterministic Policy Gradient (TD3) neural network, a robot learns to navigate to a random goal point in a simulated environment while avoiding obstacles. Obstacles are detected by laser readings and a goal is given to the robot in polar coordinates. Trained in ROS Gazebo simulator with PyTorch.  Tested with ROS Noetic on Ubuntu 20.04 with python 3.8.10 and pytorch 1.10.


Training example:
<p align="center">
    <img width=100% src="https://github.com/muhammedsiyadp/DRL-robot-navigation-1/blob/main/training.gif">
</p>



## Installation
Main dependencies: 

* [ROS Noetic](http://wiki.ros.org/noetic/Installation)
* [PyTorch](https://pytorch.org/get-started/locally/)
* [Tensorboard](https://github.com/tensorflow/tensorboard)

Compile the workspace:
```shell
$ cd ~/DRL-robot-navigation/catkin_ws
### Compile
$ catkin_make_isolated
```

Open a terminal and set up sources:
```shell
$ export ROS_HOSTNAME=localhost
$ export ROS_MASTER_URI=http://localhost:11311
$ export ROS_PORT_SIM=11311
$ export GAZEBO_RESOURCE_PATH=~/DRL-robot-navigation/catkin_ws/src/multi_robot_scenario/launch
$ source ~/.bashrc
$ cd ~/DRL-robot-navigation/catkin_ws
$ source devel_isolated/setup.bash
```

Run the training:
```shell
$ cd ~/DRL-robot-navigation/TD3
$ python3 train_velodyne_td3.py
```

To check the training process on tensorboard:
```shell
$ cd ~/DRL-robot-navigation/TD3
$ tensorboard --logdir runs
```

To kill the training process:
```shell
$ killall -9 rosout roslaunch rosmaster gzserver nodelet robot_state_publisher gzclient python python3
```

Once training is completed, test the model:
```shell
$ cd ~/DRL-robot-navigation/TD3
$ python3 test_velodyne_td3.py
```

Gazebo environment:
<p align="center">
    <img width=80% src="https://github.com/muhammedsiyadp/DRL-robot-navigation-1/blob/main/env1.png">
</p>

Rviz:
<p align="center">
    <img width=80% src="https://github.com/muhammedsiyadp/DRL-robot-navigation-1/blob/main/velodyne.png">
</p>

