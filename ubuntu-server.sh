# -y is yes to all 
# > /dev/null streams to black hole for a clean terminal
# to run:
# curl https://raw.githubusercontent.com/victorgan/desktop-setup/master/ubuntu-server.sh | sudo bash

# --------------------------------------------------
# Update apt-get and install basic programs
# --------------------------------------------------
echo "update apt-get"
apt-get update  -y # takes a while
apt-get upgrade -y # takes a while

echo "install git"
apt-get install git -y 

echo "install vim"
apt-get install vim -y
