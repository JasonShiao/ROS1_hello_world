
> The top level directory name is arbitrary, but is often called `catkin_ws`

```
# Init workspace in the src/ dir
cd src
catkin_init_workspace # Init by creating a CMakeLists.txt pointing to the toplevel.cmake stored in ROS1 install folder

# Build from the top level dir
cd ..
catkin_make
# The build result will be 2 folders: build/, devel/

# To use/activate the built catkin workspace
source devel/setup.bash

```
