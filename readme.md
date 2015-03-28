# Desktop Setup
By Victor Gan
https://github.com/victorgan/desktop-setup.git

Notes on setting up my desktop.

## Repositories Used
https://github.com/victorgan/.vim.git

## Windows

## Ubuntu 14.04

### Programs
Programs (See programs.sh):
- Git
- Emacs
- Vim
- Matlab (manual)
- Xournal (for handwritten notes)
- Dropbox

### Matlab
Copy over matlabunzipped
Make sure entire folder (and subfolders) has read/write access for myself.
sudo ./install
create symbolic links


Changes:
- Create ssh key for github: https://help.github.com/articles/generating-ssh-keys/
  - ssh-keygen -t rsa -C "victorgan@gmail.com"
  - eval "$(ssh-agent -s)"
  - ssh-add ~/.ssh/id_rsa
  - Add ssh kkey (copy from ~/.ssh/id_rsa.pub) https://github.com/settings/ssh
  - ssh -T git@github.com
- Make ~/code/ directory
  - mkdir ~/code
- Clone desktop-setup (this repository): 
  - cd ~/code && git clone git@github.com:victorgan/desktop-setup.git
- run: sudo bash ~/code/desktop-setup/programs.sh

- Create a shortcut for terminal (Drag in)
- Enable multiple workspaces (Appearance > behavior tab > enable workspaces)
- Remove shortcuts for office programs and ubuntu software center
- Synced firefox: preferences > sync, remove icons after sync
- Firefox: make gmail a web app (go to gmail, follow prompt)
- Firefox: prefernces > general > always ask me where to save files
- Firefox: prefernces > advanced > general > uncheck smooth scrolling
- Create a shortcut for matlab
- Downloaded evil for emacs and put in ~/.emacs.d/evil : http://www.emacswiki.org/emacs/Evil
- Gedit: Edit > Preferences > Editor, uncheck "Create a backup of files before saving"
- Change fonts in Ubuntu Tweak Tool to Droid Sans Mono 9 and Droid Sans 11

Optional:
- Download dropbox
- List View in Nautilus: Edit>Preferences>View new folders using: List View
- Change wallpaper, make it span all screens: appearance>look>span
- Install Video Card
  Install NVIDIA video card driver: http://ubuntuforums.org/showthread.php?t=2263316
- Installing ROS: http://wiki.ros.org/indigo/Installation/Ubuntu
