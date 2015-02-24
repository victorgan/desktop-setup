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
git clone git://github.com/victorgan/.vim.git $HOME/.vim    # copy repository
echo "source $HOME/.vim/vimrc" > $HOME/.vimrc               # point to repository
echo "export TERM=xterm-256color" >> $HOME/.bashrc          # add colors

