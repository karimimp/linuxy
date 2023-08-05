#!/bin/bash
# Unpack OpenFOAM ThirdParty

VER=v2306
export PKG=ThirdParty-$VER.tgz
export INS_DIR=$HOME/OpenFOAM/$VER
export SOURCE=$HOME/OpenFOAM/

if [ ! -d $SOURCE ]; then
    mkdir -p $SOURCE
fi

cd $SOURCE
tar xf $INS_DIR/$PKG

#
# chown -Rh $USER:$GROUPS $SOURCE/$(echo $PKG | sed 's/\.tgz//')
