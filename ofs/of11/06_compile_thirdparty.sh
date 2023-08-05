#!/bin/bash
# Compile ThirdParty
# from openfoam.org
# Svartbro IT Olle Karlsson 
# Modified for personal use by Mohsen 2023-07-25

export FOAM_INST_DIR=$HOME/OpenFOAM
. $FOAM_INST_DIR/OpenFOAM-11/etc/bashrc


# Parallell Compile
# Set number of processors used for compile
# NPROC=10
# export WM_NCOMPPROCS=$NPROC
NPROC=`cat /proc/cpuinfo |grep processor|wc -l`
export WM_NCOMPPROCS=$NPROC

# Start compile
cd $WM_THIRD_PARTY_DIR
./Allwmake -j 4 > log.compile_ThirdParty 2>&1
