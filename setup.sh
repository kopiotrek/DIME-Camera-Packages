mkdir src
cd src

# Setting up librealsense
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u
sudo apt-get install librealsense2-dkms
sudo apt-get install librealsense2-utils

# Cloning the two primary packages
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