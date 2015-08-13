# Literally, from a completely fresh install, except for system updates.
# START TUTORIAL: http://wiki.ros.org/indigo/Installation/Ubuntu
# Note: In Ubuntu 9.04 (Jaunty) and later, the main, universe, restricted and multiverse repositories are enabled by default.
  
# accept software from ROS sources
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'

# set up keys
wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

# make sure packages are up-to-date
sudo apt-get update

# HACK: Dependency in 14.04.
sudo apt-get install libgl1-mesa-dev-lts-utopic -y

# Install ROS: ROS, rqt, rviz, robot-generic libraries, 2D/3D simulators, navigation and 2D/3D perception 
# This step takes a while.
sudo apt-get install ros-indigo-desktop-full -y

# To find available packages
apt-cache search ros-indigo

# Initialize rosdep
sudo rosdep init
rosdep update -y

# Add shortcuts to bash shell
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc


# Install ROSInstall
sudo apt-get install python-rosinstall -y

# END TUTORIAL: http://wiki.ros.org/indigo/Installation/Ubuntu

# Install OpenNI
sudo apt-get install ros-indigo-openni2-launch -y

# Plug the camera in to a USB 2.0 port. If not available, disable XHCI mode in the BIOS which disables the USB 3.0 drivers.

# Launch OPENNI
roslaunch openni2_launch openni2.launch &

# list all topics
rostopic list

# Run visualizer
rosrun rviz rviz &

# view image
rosrun image_view image_view image:=/camera/rgb/image_raw
