#!/bin/bash

#在home目录下执行最佳
mkdir -p ~/ros_handsfree/src
git clone https://github.com/HANDS-FREE/handsfree.git ~/ros_handsfree/src
cd ~/ros_handsfree/src/Documentation
find -name 'environment_config.sh' | xargs perl -pi -e 's|turtlebot-create-desktop|turtlebot-create|g'
sh ~/ros_handsfree/src/Documentation/environment_config.sh -y -y
#sudo apt-get install ros-indigo-controller-manager ros-indigo-robot-state-publisher

