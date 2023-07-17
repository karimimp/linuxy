# bear minimum stuff
#!/bin/bash

sudo apt update && sudo apt upgrade &&
# just in case
sudo shutdown -r now

# Firefox extenstions
# uBlock Origin

# git
sudo apt install git git-core -y
# git config
git config --global user.name "Mohsen"
git config --global user.email "mohsenk@outlook.com"

# zshell
sudo apt-get install zsh -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
# change to zsh
chsh -s $(which zsh)
# log out and in

# Ubuntu Restricted Extras
sudo apt install ubuntu-restricted-extras -y

# Install from Snap
## vscode, spotify, vlc
sudo snap install --classic code
sudo snap install spotify
sudo snap install vlc

# python3
sudo apt install python3-pip -y 
sudo apt install python3-ipython -y
sudo pip3 install --upgrade pip
pip3 install jupyterlab
# on vscode install python + jupyter required extensions.
