#!/bin/bash
# compile paraview 
# Mohsen Karimi
# 2023-07-24

# export FOAM_INST_DIR=$HOME/OpenFOAM/
# . $FOAM_INST_DIR/OpenFOAM-v2306/etc/bashrc

# Dependencies
# sudo apt-get install git cmake build-essential libgl1-mesa-dev libxt-dev qttools5-dev libqt5x11extras5-dev libqt5help5 qttools5-dev qtxmlpatterns5-dev-tools libqt5svg5-dev python3-dev python3-numpy libopenmpi-dev libtbb-dev ninja-build

# cd $WM_THIRD_PARTY_DIR
# .makeParaView 

# easier option from binary no need for dependencies etc
# ParaView

export INS_DIR=$HOME/OpenFOAM

if [ ! -d $INS_DIR ]; then
    mkdir $INS_DIR
fi

cd $INS_DIR

if [ ! -f ParaView-5.11.1-MPI-Linux-Python3.9-x86_64.tar.gz ] ; then
    wget "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v5.11&type=binary&os=Linux&downloadFile=ParaView-5.11.1-MPI-Linux-Python3.9-x86_64.tar.gz"
fi

find . -type f -name "*ParaView-5.11.1-MPI-Linux-Python3.9*" -execdir mv {} ParaView-5.11.1-MPI-Linux-Python3.9.tar.gz \;
tar -xzvf ParaView-5.11.1-MPI-Linux-Python3.9.tar.gz
mv ParaView-5.11.1-MPI-Linux-Python3.9-x86_64 ParaView-5.11.1
