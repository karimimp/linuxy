#!/bin/bash
# Download and Install OpenFOAM Third_Party
# from openfoam.org
VER=11
OFVER=ThirdParty-$VER
DLDIR=ThirdParty-$VER-version-$VER
export FOAM_INST_DIR=$HOME/OpenFOAM

# Dont change below
if [ ! -d $FOAM_INST_DIR ]; then mkdir -p $FOAM_INST_DIR ; fi
if [ -d $FOAM_INST_DIR ]; then
	TESTFILE=$FOAM_INST_DIR/$(date +%Y%m%d%H%M%S)
	touch $TESTFILE
	if [ -f $TESTFILE ]; then
		rm $TESTFILE
	else
		echo "$FOAM_INST_DIR not writable, exit!"
		exit 0
	fi
else
	echo "Directory : $FOAM_INST_DIR dont exist, exit"
	exit 0
fi

cd $FOAM_INST_DIR
if [ ! -d $FOAM_INST_DIR/$DLDIR ]; then 
	wget -O - http://dl.openfoam.org/third-party/$VER | tar xz
else
	echo "$FOAM_INST_DIR/$DLDIR already exist, can NOT download, Exit"
	exit 0
fi

if [ -d $FOAM_INST_DIR/$DLDIR ]; then
	if [ ! -d $FOAM_INST_DIR/$OFVER ]; then
		mv $FOAM_INST_DIR/$DLDIR $FOAM_INST_DIR/$OFVER
	else
		echo "$FOAM_INST_DIR/$OFVER already exist, can create , Exit"
		exit 0
	fi
else
	echo "$FOAM_INST_DIR/$DLDIR DONT exist , Exit"
	exit 0
fi

echo "Done!"