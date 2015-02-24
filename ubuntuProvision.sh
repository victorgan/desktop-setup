# Functions
git-clone-if-needed()
{
    SOURCE_REPO=$1
    LOCAL_REPO=$2
     
    # We do it this way so that we can abstract if from just git later on
    LOCALREPO_VC_DIR=$LOCAL_REPO/.git
     
    if [ ! -d $LOCALREPO_VC_DIR ]
    then
        git clone $SOURCE_REPO $LOCAL_REPO
    else
        cd $LOCAL_REPO
        git pull $SOURCE_REPO
    fi 
}


# Variables
PROJECT_DIR="$HOME/projects/"
GITHUB_PATH="git://github.com/victorgan/"

# Main Script
echo "Updating apt-get"
apt-get update > /dev/null 
apt-get upgrade > /dev/null 

echo "Installing Git"
apt-get install git -y > /dev/null # -y yes to all, outputs stream to /dev/null 

echo "Installing Emacs"
apt-get install emacs -y > /dev/null 

echo "Installing Vim"
apt-get install vim -y > /dev/null 

echo "Customizing Vim Settings"
git-clone-if-needed $GITHUB_PATH".vim.git" $HOME/.vim # copy repository
echo "source $HOME/.vim/vimrc" > $HOME/.vimrc               # point to repository

echo "Customizing Bash Settings"
BASHRC_FILE="$HOME/.bashrc" 
BASH_COLORS="export TERM=xterm-256color" # add colors
if grep -q $BASH_COLORS $BASHRC_FILE; then
    echo ".bashrc already supports 256 colors" 
else
    echo "export TERM=xterm-256color" >> $HOME/.bashrc          
fi

# REPO_NAME="desktop-setup"
REPO_NAMES = "desktop-setup" "victorgan.github.io"
for REPO_NAME in REPO_NAMES
do
    echo "Github: Cloning " $REPO_NAME
    git-clone-if-needed $GITHUB_PATH$REPO_NAME".git" $PROJECT_DIR" "$REPO_NAME"
done
