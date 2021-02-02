#!/bin/bash

set -x

sudo apt update && sudo apt upgrade -y
sudo shutdown -r now

##### Utilities #####

# Ubuntu Tweak
sudo apt-get install curl

# zshell
sudo apt-get install zsh
sudo apt-get install git git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
# chage the default shell to zsh
# chsh -s $(which zsh)
# then log out and log in

# Ubuntu Restricted Extras
sudo apt install ubuntu-restricted-extras

# Dropbox
# For Ubuntu Mate install dropbox from Software Boutique
# For Ubuntu 20.04 install dropbox from Software (There is no shame in that!)

# VLC via snap
sudo snap install vlc

# Spotify via Snap
sudo snap install spotify 

# VSCode
sudo snap install code --classic

# Brave browser
sudo snap install brave

# Telegram
sudo snap install telegram-desktop

# Anaconda
sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
# download the latest anaconda installer from the website
bash ~/Downloads/Anaconda3-2020.11-Linux-x86_64.sh # or whatever the file name is
# then follow the wizards

# Miscellaneous
sudo apt-get -y install rar unrar
sudo apt-get -y install openssh-server
sudo apt -y install tree 
sudo apt -y install samba
sudo apt-get -y install trash-cli # trash filename (moves filename to trash)
sudo apt-get -y install htop

# BingWall
# install bingwall from Software center (daily Bing images for wallpapers)

# Double Commander
sudo apt-get install doublecmd-qt
# Latex
sudo apt install texlive-latex-extra
sudo apt install texlive-science texlive-science-doc
sudo apt install texmaker
sudo apt -y update && sudo apt -y upgrade

# Coding
sudo apt-get -y install git-cola
sudo apt-get -y install meld

# Mendeley
cd ~/Downloads
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
sudo apt-get update
rm -f mendeleydesktop-latest
# if you get an error of dependency problem run the following:
# sudo apt --fix-broken install 
# and then:
# sudo dpkg -i mendeleydesktop-latest
