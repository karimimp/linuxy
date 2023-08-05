#!/bin/bash

INS_DIR=$HOME/OpenFOAM
VER=v2306

if [ ! -d $INS_DIR/$VER ]; then
    mkdir $INS_DIR/$VER
fi

cd $INS_DIR/$VER

download () {
	wget https://sourceforge.net/projects/openfoam/files/$VER/$FILE
}

FILE=OpenFOAM-$VER.tgz
download
FILE=ThirdParty-$VER.tgz
download
FILE=OpenFOAM-modules-$VER.tgz
download
FILE=OpenFOAM-api.tags
download

# END #
