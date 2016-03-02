# -y is yes to all 
# > /dev/null streams to black hole for a clean terminal

echo "update apt-get"
apt-get update -y # takes a while
apt-get upgrade -y # takes a while

echo "install git"
apt-get install git -y 

