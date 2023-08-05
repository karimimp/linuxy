#!/bin/bash
# Compile OpenFoam
# from openfoam.org
# Svartbro IT Olle Karlsson 
# Modified for personal use by Mohsen 2023-07-24

# SOURCEFILE=.of11
# # source Users environment , normaly not need
# . /usr/share/Modules/init/bash
# . $SOURCEFILE

export FOAM_INST_DIR=$HOME/OpenFOAM
. $FOAM_INST_DIR/OpenFOAM-11/etc/bashrc

# Parallell Compile
# Set number of processors used for compile
# NPROC=10
# export WM_NCOMPPROCS=$NPROC
NPROC=`cat /proc/cpuinfo |grep processor|wc -l`
export WM_NCOMPPROCS=$NPROC

# Start compile
cd $WM_PROJECT_DIR
./Allwmake -j 4 > log.compile_OpenFoam 2>&1

