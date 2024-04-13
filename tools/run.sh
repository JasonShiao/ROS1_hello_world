# For a new VM Instance, always run
# sudo apt update

# Whenever you modified the packages
# catkin_make

source devel/setup.bash

# Check and install dependencies
rosdep check simple_arm
rosdep install -i simple_arm

# Launch
roslaunch simple_arm robot_spawn.launch

