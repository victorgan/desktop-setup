# Check if all repositories are up-to-date
# do not run in sudo!
# curl https://raw.githubusercontent.com/victorgan/desktop-setup/master/repositories.sh | bash

# Before running this, you first have to add the appropriate ssh keys to Github
# # Create ssh key for github: https://help.github.com/articles/generating-ssh-keys/
# ssh-keygen -t rsa -C "victorgan@gmail.com" # use default location, add a passphrase
# eval "$(ssh-agent -s)" # to check. does not do anything
# ssh-add ~/.ssh/id_rsa
#
# # Add ssh kkey (copy from ~/.ssh/id_rsa.pub) https://github.com/settings/ssh
# ssh -T git@github.com

# --------------------------------------------------
# Functions
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

# --------------------------------------------------
# Github repositories
# --------------------------------------------------
GITHUB_PATH="git@github.com:victorgan/"
PROJECT_DIR="$HOME/code/"

# Clone projects from Github
declare -a GITHUB_REPONAMES=("dotfiles" "desktop-setup" "vimfiles")
for REPO_NAME in "${GITHUB_REPONAMES[@]}"
do
    echo "Github: cloning/updating " $GITHUB_PATH$REPO_NAME
    git-clone-or-update $GITHUB_PATH$REPO_NAME".git" $PROJECT_DIR$REPO_NAME
done
