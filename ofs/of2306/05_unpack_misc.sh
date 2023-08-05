#!/bin/bash
# Unpack misc for OpenFOAM ThirdParty
# from openfoam.com
# Svartbro IT Olle Karlsson 
# 2023-07-01
# Modified by Mohsen (2023-07-20)

VER=v2306
export PKG=ThirdParty-$VER
export TPKD=$HOME/OpenFOAM/


# Functions
unpack () {
PKD=$(echo $PACKAGE | sed "s/.$EXT//")
if [ -f $TPKD/$PACKAGE ] ; then
	if [ ! -d $HOME/OpenFOAM/$PKG/sources/$SDIR ] ; then mkdir $HOME/OpenFOAM/$PKG/sources/$SDIR ; fi
	cd $HOME/OpenFOAM/$PKG/sources/$SDIR
	if [ ! -d $PKD ] ; then
		tar xvf $TPKD/$PACKAGE
		# chown -Rh $USER:$GROUPS $PKD
	fi
fi
}

# Unpack
PACKAGE=ADIOS2-2.8.3.tar.gz
EXT=tar.gz
SDIR=adios
#unpack

PACKAGE=boost_1_74_0.tar.bz2
EXT=tar.bz2
SDIR=boost
#unpack

PACKAGE=CGAL-4.14.3.tar.xz
EXT=tar.xz
SDIR=cgal
#unpack

PACKAGE=fftw-3.3.10.tar.gz
EXT=tar.gz
SDIR=fftw
#unpack

PACKAGE=KaHIP-3.15.tar.gz
EXT=tar.gz
SDIR=kahip
#unpack

#PACKAGE=libccmio-2.6.1.tar.gz
#EXT=tar.gz
#SDIR=libccmio
#unpack

PACKAGE=metis-5.1.0.tar.gz
EXT=tar.gz
SDIR=metis
unpack

PACKAGE=openmpi-4.1.2.tar.bz2
EXT=tar.bz2
SDIR=openmpi
#unpack

#PACKAGE=ParaView-5.11.1-MPI-Linux-Python3.9-x86_64
#EXT=tar.gz
#SDIR=paraview
#unpack

PACKAGE=scotch_6.1.0.tar.gz
EXT=tar.gz
SDIR=scotch
#unpack

echo "done!"