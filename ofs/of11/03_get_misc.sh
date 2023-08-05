#!/bin/bash
# Download misc for ThirdParty
# OpenFOAM
# from openfoam.org
# Svartbro IT Olle Karlsson 
# 2023-07-13
# Modified for personal use by Mohsen, 2023-07-25

export PACKAGE=$HOME/OpenFOAM

if [ ! -d $PACKAGE ]; then
    mkdir $PACKAGE
fi

cd $PACKAGE

# OpenMPI
if [ ! -f openmpi-4.1.5.tar.bz2 ] ; then
	wget https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.5.tar.bz2
fi

# CGAL ( need boost )
if [ ! -f CGAL-5.0.2.tar.xz ] ; then
	wget https://github.com/CGAL/cgal/releases/download/releases/CGAL-5.0.2/CGAL-5.0.2.tar.xz
fi 

# Boost
if [ ! -f boost_1_72_0.tar.bz2 ] ; then
        wget http://ufpr.dl.sourceforge.net/project/boost/boost/1.72.0/boost_1_72_0.tar.bz2
fi

# Scotch 
if [ ! -f scotch_6.1.0.tar.gz ] ; then
	wget https://gforge.inria.fr/frs/download.php/file/38187/scotch_6.1.0.tar.gz
fi

# Miscellaneous, metis http://glaros.dtc.umn.edu/gkhome/views/metis
if [ ! -f metis-5.1.0.tar.gz ] ; then
	wget http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/metis-5.1.0.tar.gz
fi

# Zoltan
if [ ! -f v3.90.tar.gz ] ; then
        wget https://github.com/sandialabs/Zoltan/archive/refs/tags/v3.90.tar.gz
fi

# Miscellaneous, libccmio
if [ ! -f libccmio-2.6.1.tar.gz ] ; then
	# wget http://portal.nersc.gov/svn/visit/trunk/third_party/libccmio-2.6.1.tar.gz
    wget https://sourceforge.net/projects/foam-extend/files/ThirdParty/libccmio-2.6.1.tar.gz/download
fi

echo "done!"
