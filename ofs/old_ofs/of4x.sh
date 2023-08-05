#!/bin/bash

# become root
sudo -s
apt-get update

# install dependencies
apt-get install git-core build-essential binutils-dev cmake flex bison zlib1g-dev qt4-dev-tools libqt4-dev libqtwebkit-dev gnuplot \
libreadline-dev libncurses-dev libxt-dev libopenmpi-dev openmpi-bin libboost-system-dev libboost-thread-dev libgmp-dev \
libmpfr-dev python python-dev libcgal-dev

# exit from root mode
exit

#OpenFOAM downloading and installation
cd ~
cd OpenFOAM
git clone https://github.com/OpenFOAM/OpenFOAM-4.x.git
git clone https://github.com/OpenFOAM/ThirdParty-4.x.git
# from Thirdparty you need SCOTCH
cd ThirdParty-4.x
./Allwmake

# make symbolic links for mpi
ln -s /usr/bin/mpicc.openmpi OpenFOAM-4.x/bin/mpicc
ln -s /usr/bin/mpirun.openmpi OpenFOAM-4.x/bin/mpirun

source $HOME/OpenFOAM/OpenFOAM-4.x/etc/bashrc FOAMY_HEX_MESH=yes

echo "alias of4x='source \$HOME/OpenFOAM/OpenFOAM-4.x/etc/bashrc $FOAM_SETTINGS'" >> $HOME/.zshrc

cd $WM_PROJECT_DIR
export QT_SELECT=qt4

# The "4" refers to the number of cores to be used for building in parallel.
./Allwmake -j 4 > log.make 2>&1

# Run it a second time for getting a summary of the installation
./Allwmake -j 4 > log.make 2>&1

# check
icoFoam -help