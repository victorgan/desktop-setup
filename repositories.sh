# Check if all repositories are up-to-date

# --------------------------------------------------
# Functions
# --------------------------------------------------
git-clone-if-needed()
{
    SOURCE_REPO=$1
    LOCAL_REPO=$2
     
    # We do it this way so that we can abstract if from just git later on
    LOCALREPO_VC_DIR=$LOCAL_REPO/.git
     
    if [ ! -d $LOCALREPO_VC_DIR ]
    then
        echo "Cloning.." $LOCAL_REPO
        git clone $SOURCE_REPO $LOCAL_REPO
    else
        echo "Already exists. Pulling.." $LOCAL_REPO
        cd $LOCAL_REPO
        git pull $SOURCE_REPO
    fi 
}

# --------------------------------------------------
# Github repositories
# --------------------------------------------------
GITHUB_PATH="git@github.com:victorgan/"
PROJECT_DIR="$HOME/code/"

# Clone projects from Github
declare -a GITHUB_REPONAMES=("dotfiles" "desktop-setup" "research-log" "victorgan.github.io")
for REPO_NAME in "${GITHUB_REPONAMES[@]}"
do
    echo "Github: Cloning " $REPO_NAME
    git-clone-if-needed $GITHUB_PATH$REPO_NAME".git" $PROJECT_DIR$REPO_NAME
done

# Clone paper repositories from Github
PAPER_DIR="$PROJECT_DIR/papers/"
declare -a GITHUB_REPONAMES=("sun2014quantitative" "fragkiadaki2014grouping"
"henriques2014high" "hosang2015what" "gritti2014kinect")
for REPO_NAME in "${GITHUB_REPONAMES[@]}"
do
    echo "Github: Cloning " $REPO_NAME
    git-clone-if-needed $GITHUB_PATH$REPO_NAME".git" $PAPER_DIR$REPO_NAME
done

# Clone my experiments from Github
EXPERIMENTS_DIR="$PROJECT_DIR/experiments/"
declare -a GITHUB_REPONAMES=("rrt")
for REPO_NAME in "${GITHUB_REPONAMES[@]}"
do
    echo "Github: Cloning " $REPO_NAME
    git-clone-if-needed $GITHUB_PATH$REPO_NAME".git" $EXPERIMENTS_DIR$REPO_NAME
done

# # Vim
# echo "Customizing Vim Settings"
# git-clone-if-needed $GITHUB_PATH".vim.git" $HOME/.vim # copy repository
# echo "source $HOME/.vim/vimrc" > $HOME/.vimrc               # point to repository
# 
# # Bash
# echo "Customizing Bash Settings"
# BASHRC_FILE="$HOME/.bashrc" 
# BASH_COLORS="export TERM=xterm-256color" # add colors
# if grep -q $BASH_COLORS $BASHRC_FILE; then
#     echo ".bashrc already supports 256 colors" 
# else
#     echo "export TERM=xterm-256color" >> $HOME/.bashrc          
# fi
