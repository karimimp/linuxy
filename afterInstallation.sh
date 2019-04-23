#!/bin/bash

set -x

sudo apt update && sudo apt upgrade -y
sudo shutdown -r now

##### Utilities #####

# Ubuntu Tweak
sudo apt install gnome-tweak-tool

# zshell
sudo apt-get install zsh
sudo apt-get install git git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# Ubuntu Restricted Extras
sudo apt install ubuntu-restricted-extras

# Dropbox
sudo apt-get -y install nautilus-dropbox
# For Ubuntu Mate install dropbox from Software Boutique

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt update && sudo apt upgrade

# VLC via snap
sudo apt install snap -y
sudo snap install vlc

# VirtualBox No need for now
# sudo apt-get -y install virtualbox

# Grub customizer
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo apt-get -y update
sudo apt-get -y install grub-customizer
# sudo apt-get remove --autoremove grub-customizer (to uninstall)

# Skype via snap
sudo snap install skype --classic

# Skype using external package
sudo apt install gdebi-core
wget https://repo.skype.com/latest/skypeforlinux-64.deb
sudo gdebi skypeforlinux-64.deb

# Spotify via Snap
sudo snap install spotify 

# Telegram
sudo snap install telegram-desktop

# Miscellaneous
sudo apt-get -y install rar unrar
sudo apt-get -y install openssh-server
sudo apt-get -y install apt-file #http://en.wikipedia.org/wiki/Apt-file
sudo apt-file update
sudo apt -y install okular
sudo apt-get -y install sloccount # counting source lines of code
#sudo apt-get -y install youtube-dl
sudo apt -y install tree 
sudo apt install samba
sudo apt-get install trash-cli # trash filename (moves filename to trash)
sudo apt-get install htop

# Indicator-SysMonitor
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo apt-get update
sudo apt-get install indicator-sysmonitor

# Numix for MATE Desktop
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt install numix-blue-gtk-theme
sudo apt-get install numix-gtk-theme
sudo apt install numix-icon-theme
sudo apt install numix-icon-theme-circle
sudo apt install numix-icon-theme-square

# Krusader
sudo apt-get install krusader

# Markup preview
sudo apt-get install retext

# Media
# sudo apt-get -y install chromium-codecs-ffmpeg-extra #HTML5 videos on chromium
sudo apt-get -y install pepperflashplugin-nonfree
sudo update-pepperflashplugin-nonfree --install
#sudo apt-get -y install adobe-flashplugin #yes needed

# Texlive & Texmaker
sudo apt install texlive-latex-extra
sudo apt install texlive-science texlive-science-doc
sudo apt install texmaker
sudo apt -y update && sudo apt -y upgrade
sudo apt -y install texmaker

# synaptic
# sudo apt-get install synaptic

# Reboot
sudo shutdown -r now

##### Coding & etc #####

# Blas and lapack
sudo apt-get -y install libblas3
sudo apt-get -y install libblas-doc
sudo apt-get -y install libblas-dev
sudo apt-get -y install liblapack3
sudo apt-get -y install liblapack-doc
sudo apt-get -y install liblapack-dev
sudo apt-get -y install libc6-dev-i386

# Python
sudo apt-get -y install dvipng jabref
sudo apt-get -y install libfreetype6-dev
sudo apt-get -y install python-dev
sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip
sudo apt-get -y install python-numpy
sudo apt-get -y install python-scipy
sudo apt-get -y install python-sympy
sudo apt-get -y install python-matplotlib
sudo apt-get -y install python-sphinx
sudo apt install python3-numpy python3-scipy python3-matplotlib
# external packages for python3 and other python related stuff
pip3 install requests
pip3 install colorama
pip3 install openpyexcel
pip3 install pylint
pip3 install pint # for unit coversion in python
sudo apt-get install spyder3

# jupyter notebook see the following:
#https://datawookie.netlify.com/blog/2017/06/setting-up-jupyter-with-python-3-on-ubuntu/

# Coding
sudo apt-get -y install git git-core
sudo apt-get -y install git-cola
sudo apt-get -y install idle idle3
sudo apt-get -y install vim
sudo apt-get -y install meld
#sudo apt-get -y install pdftk
sudo apt-get -y install diffpdf
#sudo apt-get -y install poppler-utils
sudo apt-get -y install octave
sudo apt-get -y install gfortran
sudo apt-get -y install g++
sudo apt-get -y install fort77
sudo apt-get -y install libboost-dev
sudo apt-get -y install xclip
sudo apt-get -y install valgrind


# Graphics
sudo apt-get -y install imagemagick
sudo apt-get -y install blender
sudo apt-get -y install g3data
sudo apt-get -y install gimp
sudo apt-get -y install grace
sudo apt-get -y install inkscape
sudo apt install -y openmpi-bin

# Plotting
sudo apt install veusz 

# Text-editor Vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get install code

# Mendeley Desktop for Reference managment
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
sudo apt-get update
rm -f mendeleydesktop-latest

# Gromacs
# sudo apt-get -y install gromacs


# Libraries and fonts
sudo apt-get install libstdc++5 libjpeg62
sudo apt-get -y install xfstt
sudo apt-get -y install xfonts-75dpi xfonts-100dpi
xset +fp /usr/share/fonts/X11/75dpi/
xset +fp /usr/share/fonts/X11/100dpi/

# cmake
sudo apt-get install cmake

### OpenFOAM
# OpenFOAM V6 & ParaView 5.4.0
sudo sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -"
sudo add-apt-repository http://dl.openfoam.org/ubuntu
sudo apt update
sudo apt-get -y install openfoam6
# upgrading OF only
sudo apt-get update
sudo apt-get install --only-upgrade openfoam6

# freecad
# sudo add-apt-repository -y ppa:freecad-maintainers/freecad-stable
# sudo apt-get update
# sudo apt-get install freecad

# gmsh
# cd $HOME
# wget http://gmsh.info/bin/Linux/gmsh-2.12.0-Linux64.tgz
# tar -xvzf gmsh-2.12.0-Linux64.tgz
# sudo mv gmsh-2.12.0-Linux /opt/
# ln -s /opt/gmsh-2.12.0-Linux/bin/gmsh /usr/bin/gmsh

### MoDeNa dependenscies

# sudo apt-get install software-properties-common
# sudo add-apt-repository ppa:george-edison55/cmake-3.x
# sudo apt-get update
# sudo apt-get -y install cmake
# sudo apt-get upgrade

# sudo apt-get install automake libltdl-dev libltdl7 mongodb \
#     python-rpy2 python-pip python-scipy python-rpy2 python-blessings \
#     r-base r-base-dev

# sudo apt-get install swig

# sudo pip install FireWorks pymongo mongoengine

# PETSC
# wget --directory-prefix=${HOME}/Downloads "http://ftp.mcs.anl.gov/pub/petsc/release-snapshots/petsc-3.4.4.tar.gz"
# tar --gunzip --extract --file=${HOME}/Downloads/petsc-3.4.4.tar.gz --directory=${HOME}/Downloads
# cd ${HOME}/Downloads/petsc-3.4.4
# PETSC_DIR=/opt/petsc/petsc-3.4.4
# ./configure  --download-mpich
# make
# sudo make install
# echo "export PETSC_DIR=${PETSC_DIR}" >> ~/.bashrc
