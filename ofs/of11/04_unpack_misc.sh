#!/bin/bash
# Unpack misc for OpenFOAM ThirdParty
# from openfoam.org
# Svartbro IT Olle Karlsson 
# 2023-07-13
# Modified for personal use by Mohsen, 2023-07-25

VER=11
export PKG=ThirdParty-$VER
export TPKD=$HOME/OpenFOAM


# Functions
unpack () {
PKD=$(echo $PACKAGE | sed "s/.$EXT//")
if [ -f $TPKD/$PACKAGE ] ; then
	cd $HOME/OpenFOAM/$PKG/
	if [ ! -d $PKD ] ; then
		tar xvf $TPKD/$PACKAGE
		# if [ -d $PKD ]; then chown -Rh $USER:$GROUPS $PKD ; fi
		# if [ -d $PKD ]; then chmod 0755 $PKD ; fi
	fi
fi
}

# Unpack
#PACKAGE=openmpi-4.1.5.tar.bz2
#EXT=tar.bz2
#unpack

#PACKAGE=CGAL-5.0.2.tar.xz
#EXT=tar.xz
#unpack

#PACKAGE=boost_1_72_0.tar.bz2
#EXT=tar.bz2
#unpack

PACKAGE=scotch_6.1.0.tar.gz
EXT=tar.gz
unpack
if [ -d $HOME/OpenFOAM/$PKG/scotch_6.0.9 ]; then rm -Rf $HOME/OpenFOAM/$PKG/scotch_6.0.9 ; fi

PACKAGE=metis-5.1.0.tar.gz
EXT=tar.gz
unpack

# Zoltan
#PACKAGE=v3.90.tar.gz
#EXT=tar.gz
#unpack

#PACKAGE=libccmio-2.6.1.tar.gz
#EXT=tar.gz
#unpack

