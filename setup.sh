mkdir src
cd src

git clone https://github.com/ros-perception/ar_track_alvar
git clone https://github.com/NYU-robot-learning/Realsense-ROS-DIME

cd ar_track_alvar
git checkout noetic-devel

cd ..
catkin_make

# Adding the source command to the bashrc file
curr_dir = `pwd`
echo "source $curr_dir/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc