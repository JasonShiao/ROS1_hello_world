
> The top level directory name is arbitrary, but is often called `catkin_ws`

## Init workspace
```
# Init workspace in the src/ dir
cd src
catkin_init_workspace # Init by creating a CMakeLists.txt pointing to the toplevel.cmake stored in ROS1 install folder
```

## Add/Fill packages
```
# From src/ dir
cd src
git clone <package URL> <package_folder_name>
# e.g git clone -b first_interaction https://github.com/udacity/RoboND-simple_arm/ simple_arm
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
