#!/bin/bash

# OFv2012
# This is based on the instruction provided by UCL OpenFOAM course with slight 
# modifications for 20.12 version. The source for this instruction is here: 
# https://openfoam.com/download/install-source.php

# install requirements
sudo apt-get update
sudo apt-get install build-essential flex bison cmake zlib1g-dev libboost-system-dev libboost-thread-dev libopenmpi-dev openmpi-bin gnuplot libreadline-dev libncurses-dev libxt-dev 
sudo apt-get install qt4-dev-tools libqt4-dev libqt4-opengl-dev freeglut3-dev libqtwebkit-dev
sudo apt-get install libscotch-dev libcgal-dev
# check the versions by
mpirun --version
gcc --version
cmake --version
# download openfoam and thirdparty packages
mkdir $HOME/OpenFOAM
cd $HOME/OpenFOAM
wget https://sourceforge.net/projects/openfoam/files/v2012/OpenFOAM-v2012.tgz
wget https://sourceforge.net/projects/openfoam/files/v2012/ThirdParty-v2012.tgz
tar -xzf OpenFOAM-v2012.tgz
tar -xzf ThirdParty-v2012.tgz
# source the openfoam environment
source ~/OpenFOAM/OpenFOAM-v2012/etc/bashrc
# check if everything is OK to start
foamSystemCheck
# go to $WM_PROJECT_DIR or cd to it
foam
# compiling might take several hours
# -s: reduce the output level, 
# -l: record output in a log file
# -j: use all cores, -j 8: use specific number of cores
./Allwmake -s -l
# openfoam alias
echo "alias of2012='. $HOME/OpenFOAM/OpenFOAM-v20126/etc/bashrc'" >> $HOME/
.zshrc
# open a new terminal and then
of2012
# testing if insallation is done correctly
foamInstallationTest
# run a tutorial
mkdir -p $FOAM_RUN
run
cp -r $FOAM_TUTORIALS/incompressible/simpleFoam/pitzDaily ./
cd pitzDaily
blockMesh
simpleFoam
# finally install paraview
sudo apt-get install paraview
echo "Done!"