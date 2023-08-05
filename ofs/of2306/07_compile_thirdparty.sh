#!/bin/bash
# Compile ThirdParty
# from openfoam.com
# Svartbro IT Olle Karlsson 
# 2023-07-01
# Modified for personal use by Mohsen 2023-07-24

export FOAM_INST_DIR=$HOME/OpenFOAM/
. $FOAM_INST_DIR/OpenFOAM-v2306/etc/bashrc

# Parallel compile
# set number of processors
NPROC=`cat /proc/cpuinfo |grep processor|wc -l`
export WM_NCOMPPROCS=$NPROC

# Start compile
cd $WM_THIRD_PARTY_DIR
./Allwmake > log.compile_thirdparty 2>&1
