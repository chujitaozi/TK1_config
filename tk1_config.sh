#!/bin/bash

#在home目录下执行最佳
#更换源
echo 请安装无线网卡驱动
sudo cp /etc/apt/sources.list /etc/apt/sources.list.cp
sudo cp source.list /etc/apt/sources.list
sudo apt-get update

#安装git
sudo apt-get install git g++
#配置postflash
cd ~
git clone https://github.com/jetsonhacks/postFlash.git
cd ~/postFlash
sh configureSystem.sh

#安装grinch
#cd ~
#git clone https://github.com/jetsonhacks/installGrinch.git
#sh ~/installGrinch/installGrinch.sh
#安装ros
cd ~
git clone https://github.com/jetsonhacks/installROS.git
sh installROS/installROS.sh
#sudo apt-get install ros-indigo-desktop -y
