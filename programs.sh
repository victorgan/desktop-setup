# Install programs.
echo "Updating apt-get"
# apt-get update > /dev/null 
# apt-get upgrade > /dev/null 

echo "Installing Git"
apt-get install git -y > /dev/null # -y yes to all, outputs stream to /dev/null 

echo "Installing Emacs"
apt-get install emacs -y > /dev/null 

echo "Installing Vim"
apt-get install vim -y > /dev/null 

echo "Install right click to terminal"
sudo apt-get install nautilus-open-terminal

echo "Install openssh-server: allow incoming ssh"
sudo apt-get install openssh-server

# Python
# echo "Installing python-pip"
# apt-get install python-pip -y > /dev/null
# 
# echo "Installing ipython notebook"
# pip install "ipython[notebook]"

