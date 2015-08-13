# Desktop Setup
By Victor Gan
https://github.com/victorgan/desktop-setup.git

Notes on setting up my desktop.


## Repositories Used
https://github.com/victorgan/.vim.git

## Windows

## Ubuntu 14.04

This is meant to capture any state changes from a fresh ubuntu install.
I try and keep everything to its default whenever possible.

- Created bootable USB
    - in Ubuntu, run 'Startup Disk Creator'
    - open ISO and select location of Ubuntu ISO
    - plug in a USB and make it a startup disk
- Restart the computer to reformat, plug in USB, boot from USB
- Connect to Internet
- format partition, mount on / with ext4 format
- leave boot drive the same
- do not enable auto-login
- follow instructions until restart
- connect to internet and install updates, restart

### Preliminary Instructions
Getting this repository cloned:

# install git
sudo apt-get install git 

# Create ssh key for github: https://help.github.com/articles/generating-ssh-keys/
ssh-keygen -t rsa -C "victorgan@gmail.com" # use default location, add a passphrase
eval "$(ssh-agent -s)" # to check. does not do anything
ssh-add ~/.ssh/id_rsa

# Add ssh kkey (copy from ~/.ssh/id_rsa.pub) https://github.com/settings/ssh
ssh -T git@github.com

# make directory and clone
mkdir ~/code
cd ~/code && git clone git@github.com:victorgan/desktop-setup.git

### Basic Programs and Dotfile Settings
- run: sudo bash ~/code/desktop-setup/programs.sh
- install https://github.com/victorgan/dotfiles by downloading running
  install.sh
- download more repositories, which can be easily done from repositories.sh

### Install ROS
- https://gist.github.com/victorgan/cbf7e0216e802844198a
- http://wiki.ros.org/indigo/Installation/Ubuntu

### Matlab
- Copy over matlabunzipped
- Make sure entire folder (and subfolders) has read/write access for myself.
- sudo ./install
- create symbolic links
- create a shortcut for matlab

### Program-specific
- Synced firefox: preferences > sync, remove icons after sync
- Firefox: prefernces > general > always ask me where to save files
- Firefox: prefernces > advanced > general > uncheck smooth scrolling
- Downloaded evil for emacs and put in ~/.emacs.d/evil : http://www.emacswiki.org/emacs/Evil
- Gedit: Edit > Preferences > Editor, uncheck "Create a backup of files before saving"

### Unity Desktop Changes:
- Create a shortcut for terminal (Drag in)
- Remove amazon shortcut
- Remove shortcuts for office programs
- shortcuts to add:
    - KeepassX
    - gVim
- Enable multiple workspaces (Appearance > behavior tab > enable workspaces)

### Install NVIDIA Drivers
https://help.ubuntu.com/community/BinaryDriverHowto/Nvidia
It should probably be installed already. 
Go to: Additional Drivers 
Select a proprietary driver

### Optional
- Download dropbox
- List View in Nautilus: Edit>Preferences>View new folders using: List View
- Install Video Card
  Install NVIDIA video card driver: http://ubuntuforums.org/showthread.php?t=2263316
- Best way to install NVIDIA driver: https://help.ubuntu.com/community/BinaryDriverHowto/Nvidia
    - System -> Administration -> Additional Drivers
- Installing ROS: sudo ros.sh

