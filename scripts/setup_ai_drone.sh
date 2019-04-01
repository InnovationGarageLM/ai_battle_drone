#!/bin/bash

# NOTE: Add the following two lines to ~/.bashrc
# source /opt/ros/kinetic/setup.bash
# source ~/local/src/cuis/cuis_package/setup_CUIS.sh

export ROS_PROJ_PATH="$HOME/ai_battle_drone"


export PX4_PATH="$ROS_PROJ_PATH/px4/Firmware"

source "$ROS_PROJ_PATH/devel/setup.bash"


export GAZEBO_MODEL_PATH="$GAZEBO_MODEL_PATH:$ROS_PROJ_PATH/src/gazebo/ai_drone_gazebo/models"
export GAZEBO_WORLD_PATH="$GAZEBO_WORLD_PATH:$ROS_PROJ_PATH/src/gazebo/ai_drone_gazebo/worlds"
export GAZEBO_PLUGIN_PATH="$ROS_PROJ_PATH/build/gazebo_plugins"

export PATH=$PATH:"$ROS_PROJ_PATH/src/ai_battle_drone/scripts"

source $PX4_PATH/Tools/setup_gazebo.bash $PX4_PATH $PX4_PATH/build/posix_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$PX4_PATH:$PX4_PATH/Tools/sitl_gazebo
export GEOGRAPHICLIB_DATA="/usr/share/GeographicLib"

