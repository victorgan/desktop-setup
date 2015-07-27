# Install programs.
# To run, 
# sudo bash programs.sh

# ----------------------------------------
# Essentials
# ----------------------------------------
echo "Updating apt-get"
# apt-get update -y # takes a while
# apt-get upgrade -y # takes a while

echo "Installing Git"
apt-get install git -y 
# -y yes to all, > /dev/null streams to black hole for clean terminal

echo "Installing Vim"
apt-get install vim -y

echo "Installing Emacs"
apt-get install emacs -y 

echo "Install openssh-server to allow incoming ssh"
sudo apt-get install openssh-server -y

echo "Install Latex"
sudo apt-get install texlive-full -y  # pdflatex file.tex

# ----------------------------------------
# GUI Stuff
# ----------------------------------------
echo "Install right click to terminal"
sudo apt-get install nautilus-open-terminal -y

# echo "Install Git GUI"
# sudo apt-get install gitk -y 
# sudo apt-get install git-gui -y 

echo "Install KeepassX"
sudo apt-get install keepassx -y

echo "Install GVim"
sudo apt-get install vim-gnome -y

# echo "Install Ubnutu Tweak"
# sudo apt-get install unity-tweak-tool -y

# ----------------------------------------
# Python Stack
# ----------------------------------------
echo "Installing python-pip"
apt-get install python-pip -y 
 
echo "Installing ipython notebook"
pip install "ipython[notebook]"

echo "Installing Scipy stack"
sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose -y 

# ----------------------------------------
# Haskell Stack
# ----------------------------------------
echo "Installing Haskell"
sudo apt-get install haskell-platform -y

echo "Updating Cabal"
cabal update && cabal install cabal-install

echo "Haskell Packages: hlint"
cabal install hlint

# ----------------------------------------
# ROS + OpenNI, getting Asus Xtion Pro Live working: https://gist.github.com/victorgan/cbf7e0216e802844198a
# ----------------------------------------
