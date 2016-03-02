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

# --------------------------------------------------
# Clone or update repositories
# --------------------------------------------------
git-clone-or-update()
{
    SOURCE_REPO=$1
    LOCAL_REPO=$2

    # We do it this way so that we can abstract if from just git later on
    LOCALREPO_VC_DIR=$LOCAL_REPO/.git

    if [ ! -d $LOCALREPO_VC_DIR ]
    then
        echo "Cloning.." $SOURCE_REPO
        git clone $SOURCE_REPO $LOCAL_REPO > /dev/null
    else
        echo "Already exists. Pulling.." $SOURCE_REPO
        cd $LOCAL_REPO
        git pull $SOURCE_REPO >/dev/null
        git status
    fi 
}

GITHUB_PATH="git@github.com:victorgan/"
PROJECT_DIR="$HOME/code/"

# Clone projects from Github
declare -a GITHUB_REPONAMES=("vimfiles" "desktop-setup")
for REPO_NAME in "${GITHUB_REPONAMES[@]}"
do
    echo "Github: cloning/updating " $REPO_NAME
    git-clone-or-update $GITHUB_PATH$REPO_NAME".git" $PROJECT_DIR$REPO_NAME
done
