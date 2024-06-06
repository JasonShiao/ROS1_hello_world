
> The top level directory name is arbitrary, but is often called `catkin_ws`

## Init workspace
```
# Init workspace in the src/ dir
cd src
catkin_init_workspace # Init by creating a CMakeLists.txt pointing to the toplevel.cmake stored in ROS1 install folder
```

## Add/Fill existing/third_party packages
```
# From src/ dir
cd src
git clone <package URL> <package_folder_name>
# e.g git clone -b first_interaction https://github.com/udacity/RoboND-simple_arm/ simple_arm

# Fill simple_arm (Add simple_mover)
# The passive simple_arm node represents the arm model and environment and accepts commands to the arm
# simple_mover node is an "executable" that continously publish joint angles to the simple_arm node
# e.g. simple_mover publish joint1 and joint2 angles to topics (joint_1_position_controller and joint_2_position_controller) provided by the simple_arm node continuously,
#      and then the arm will move accordingly
```

## Build and activate the catkin workspace
```
# Build from the top level dir
cd <top level dir>
catkin_make
# The build result will be 2 folders: build/, devel/

# To use/activate the built catkin workspace
source devel/setup.bash
```

## Resolve dependencies with rosdep
Advanced packages typically require other packages to build or run
```
# MUST have activated the workspace
rosdep check <package name>
rosdep install -i <package name>
```

## Run with launch file
> Launch files provide a convenient way to start complex systems of nodes, set parameters, and manage node configurations without having to run each component manually from the command line
```
# MUST have activated the workspace
roslaunch simple_arm robot_spawn.launch
```

## Run executable with rosrun
```
# MUST have activated the workspace
rosrun simple_arm simple_mover
```

## Create new package
```
# package should always be in the src/ directory
cd src
# Create your package and start develop ....
catkin_create_pkg <your_package_name> [dependency1 dependency2 …]
```
