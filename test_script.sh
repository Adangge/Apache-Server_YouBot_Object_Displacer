#!/bin/bash
# My Script	

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Youbot</title>'
echo '</head>'
echo '<body>'
echo 'Running your Youbot!'

sudo setcap cap_net_raw+ep /opt/ros/hydro/lib/youbot_driver_ros_interface/youbot_driver_ros_interface

sudo ldconfig /opt/ros/hydro/lib
sudo ldconfig /opt/ros/hydro/setup.sh
sudo ldconfig /opt/ros/hydro/setup.bash

#export LD_LIBRARY_PATH="/opt/ros/hydro/lib/libYouBotDriver.so"
#please update following ip with yours

export ROS_IP=192.168.2.181

#please update the master URI with yours
export ROS_MASTER_URI=http://192.168.2.181:1131

#cd /home/youbot/catkin_ws/src/youbot_applications/
cd /home/youbot/catkin_ws/

source /opt/ros/hydro/setup.bash
source /opt/ros/hydro/setup.sh
source /home/youbot/catkin_ws/devel/setup.bash
source /home/youbot/catkin_ws/devel/setup.sh
#source /opt/ros/hydro/lib/libYouBotDriver.so

#source /opt/ros/hydro/bin/rospack
#source /opt/ros/hydro/bin/roslaunch

roslaunch youbot_driver_ros_interface youbot_driver.launch

#rosrun hello_world_demo youBot_HelloWorldDemo

rosrun object_displacer object_displacer
echo '</body>'
echo '</html>'





