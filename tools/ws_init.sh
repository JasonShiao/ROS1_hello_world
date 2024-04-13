# You should have created a workspace folder and enter it

mkdir src
cd src
catkin_init_workspace

cd ..
catkin_make

source devel/setup.bash

# Clone the sample package
cd src
git clone -b first_interaction https://github.com/udacity/RoboND-simple_arm/ simple_arm

cd ..
catkin_make

