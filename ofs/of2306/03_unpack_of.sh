#!/bin/bash
# Unpack OpenFOAM

export VER=v2306
export PKG=OpenFOAM-$VER.tgz
export INS_DIR=$HOME/OpenFOAM/$VER
export SOURCE=$HOME/OpenFOAM/

if [ ! -d $SOURCE ]; then
    mkdir -p $SOURCE
fi

cd $SOURCE
tar xf $INS_DIR/$PKG

echo "done!"
#
# chown -Rh $USER:$GROUPS $SOURCE/$(echo "$PKG" | sed 's/\.tgz//')
