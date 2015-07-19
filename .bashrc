source /opt/ros/hydro/setup.bash

source /etc/bash_completion.d/git

source ~/known_hosts_autocomplete.sh

IN=`hostname -I`
IFS=' ' read -ra ARRAY <<< "$IN"
export ROS_IP=${ARRAY[0]}
export ROS_HOSTNAME=$ROS_IP

alias set_ros_master='export ROS_MASTER_URI=http://130.149.250.67:11311'
alias ros_launchcam='roslaunch openni_launch openni.launch depth_registration:=true'
alias ros_launch2cam='roslaunch openni2_launch openni2.launch depth_registration:=true'
alias ros_launchfreenect='roslaunch freenect_launch freenect.launch depth_registration:=true'
alias ros_recon='rosrun rqt_reconfigure rqt_reconfigure'

export ROS_MSG_RGB=/camera/rgb/image_color
export ROS_MSG_POINTS=/camera/depth_registered/points
alias ros_image_view="rosrun image_view image_view " $1

# formerly packset, cd to catkin ws before calling
alias ros_overlay_ws="source devel/setup.bash"

export PYTHONPATH=/media/win/Users/woodstock/dev/src/python/lib:$PYTHONPATH
export PYTHONPATH=/home/kashefy/src/caffe/python:$PYTHONPATH

export OPENCV_TEST_DATA_PATH=/home/kashefy/src_win/opencv_extra/testdata

# added by travis gem
[ -f /home/kashefy/.travis/travis.sh ] && source /home/kashefy/.travis/travis.sh

#export PATH=$PATH
export LD_LIBRARY_PATH=/home/kashefy/install/lib:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=/home/kashefy/install/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/home/kashefy/install/include:$CPLUS_INCLUDE_PATH
