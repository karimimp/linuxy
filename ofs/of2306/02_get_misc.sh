#!/bin/bash

export INS_DIR=$HOME/OpenFOAM

if [ ! -d $INS_DIR ]; then
    mkdir $INS_DIR
fi

cd $INS_DIR

# ADIOS2
if [ ! -f ADIOS2-2.8.3.tar.gz ] ; then
	wget https://github.com/ornladios/ADIOS2/archive/refs/tags/v2.8.3.tar.gz
	mv v2.8.3.tar.gz ADIOS2-2.8.3.tar.gz
fi

# Boost
if [ ! -f boost_1_74_0.tar.bz2 ] ; then
	wget http://ufpr.dl.sourceforge.net/project/boost/boost/1.74.0/boost_1_74_0.tar.bz2
fi

# CGAL ( need boost )
if [ ! -f CGAL-4.14.3.tar.xz ] ; then
	wget https://github.com/CGAL/cgal/releases/download/releases/CGAL-4.14.3/CGAL-4.14.3.tar.xz
fi 

# FFTW http://www.fftw.org
if [ ! -f fftw-3.3.10.tar.gz ] ; then
	wget ftp://ftp.fftw.org/pub/fftw/fftw-3.3.10.tar.gz
fi

# KaHIP -- Karlsruhe High Quality Partitioning
if [ ! -f KaHIP-3.14.tar.gz ] ; then
	wget https://github.com/KaHIP/KaHIP/archive/refs/tags/v3.14.tar.gz
	mv v3.14.tar.gz KaHIP-3.14.tar.gz
fi

# Miscellaneous, libccmio
if [ ! -f libccmio-2.6.1.tar.gz ] ; then
	wget http://portal.nersc.gov/svn/visit/trunk/third_party/libccmio-2.6.1.tar.gz
fi

# Miscellaneous, metis http://glaros.dtc.umn.edu/gkhome/views/metis
if [ ! -f metis-5.1.0.tar.gz ] ; then
	# wget http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/metis-5.1.0.tar.gz
    wget https://sourceforge.net/projects/openfoam-extend/files/foam-extend-3.0/ThirdParty/metis-5.1.0.tar.gz/download
fi
# OpenMPI
if [ ! -f openmpi-4.1.2.tar.bz2 ] ; then
	wget https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.2.tar.bz2
fi

# ParaView
if [ ! -f ParaView-5.10.1-MPI-Linux-Python3.9-x86_64.tar.gz ] ; then
	wget "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v5.11&type=binary&os=Linux&downloadFile=ParaView-5.11.1-MPI-Linux-Python3.9-x86_64.tar.gz"
fi
      
# Scotch 
if [ ! -f scotch_6.1.0.tar.gz ] ; then
	wget https://gforge.inria.fr/frs/download.php/file/38187/scotch_6.1.0.tar.gz
fi

echo "Done!"