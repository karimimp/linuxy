#!/bin/bash
# Compile foam-extend
# based on [https://sourceforge.net/p/foam-extend/foam-extend-5.0/ci/master/tree/doc/buildInstructions/Debian/Ubuntu/Ubuntu_22.04]
# Mohsen Karimi
# Last update: 2023-07-25

# clone foam-extend-5.0
cd $HOME
mkdir foam
cd $HOME/foam
git clone git://git.code.sf.net/p/foam-extend/foam-extend-5.0 foam-extend-5.0

# update ubuntu installation
sudo apt update
sudo apt upgrade

# install required packages
sudo apt install git binutils-dev cmake flex zlib1g-dev libncurses5-dev curl \
  bison libxt-dev rpm mercurial graphviz openmpi-bin libopenmpi-dev \
  build-essential linux-generic libmpich-dev libopenmpi-dev metis \
  libmetis-dev libparmetis-dev scotch libscotch-dev \
  python3 python3-dev python-is-python3 python3-setuptools

# customize some settings
# go into root of foam-extend:
cd ~/foam/foam-extend-5.0
# edit ThidParty:
sed -i -e 's=rpmbuild --define=rpmbuild --define "_build_id_links none" --define=' ThirdParty/tools/makeThirdPartyFunctionsForRPM

# set environmental variables
cd ~/foam/foam-extend-5.0
# source etc/bashrc
source etc/zshrc

# compile
./Allwmake.firstInstall

# user directory
mkdir -p $FOAM_RUN

# alias
# echo "alias fe50='source \$HOME/foam/foam-extend-5.0/etc/bashrc'" >> $HOME/.bashrc
echo "alias fe50='source \$HOME/foam/foam-extend-5.0/etc/zshrc'" >> $HOME/.zshrc