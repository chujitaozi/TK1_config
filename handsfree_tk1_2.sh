cd ~/ros_handsfree/src/handsfree_hw/src
find -name 'main.cpp' | xargs perl -pi -e 's|/home/kedou/ros_workspace/mobile_robot_ws/src/handsfree/|/home/ubuntu/ros_handsfree/src/|g'
cd ~/ros_handsfree
catkin_make
echo "source ~/ros_handsfree/devel/setup.sh" >> ~/.bashrc
echo "export ROS_MASTER_URI=http://tegra-ubuntu:11311" >> ~/.bashrc
echo "export ROS_IP=`hostname -I`" >> ~/.bashrc
