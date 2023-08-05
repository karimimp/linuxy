#!/bin/bash
# OpenFOAM set settings
# from openfoam.com
# Svartbro IT Olle Karlsson 
# 2023-07-01
# Modified for personal use by Mohsen 2023-07-24

# SOURCEFILE=of2306
# . /usr/share/Modules/init/bash
# . $SOURCEFILE

export FOAM_INST_DIR=$HOME/OpenFOAM/
. $FOAM_INST_DIR/OpenFOAM-v2306/etc/bashrc

# do I need this part?
# RCFILE=$WM_PROJECT_DIR/etc/bashrc
# if [ -f $RCFILE ]; then
# 	sed -i "$RCFILE" -e 's/WM_MPLIB=.*/WM_MPLIB=SYSTEMOPENMPI/'
# else
# 	echo "File: $RCFILE dont exist!"
# 	exit 0
# fi
