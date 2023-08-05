#!/bin/bash
# OpenFOAM set settings
# from openfoam.org
# Svartbro IT Olle Karlsson 
# Modified for personal use by Mohsen 2023-07-25

# SOURCEFILE=.of11
# . /usr/share/Modules/init/bash
# . $SOURCEFILE

# if [ ! -f /app/OpenFOAM/$SOURCEFILE ]; then cp -p $SOURCEFILE /app/OpenFOAM ; fi

export FOAM_INST_DIR=$HOME/OpenFOAM
. $FOAM_INST_DIR/OpenFOAM-11/etc/bashrc


RCFILE=$WM_PROJECT_DIR/etc/bashrc
if [ -f $RCFILE ]; then
	sed -i "$RCFILE" -e 's/WM_MPLIB=.*/WM_MPLIB=SYSTEMOPENMPI/'
	MPIFILE=$WM_PROJECT_DIR/etc/config.sh/mpi
	if [ -f $MPIFILE ]; then
		OPENMPIVER=$(ls -l $WM_THIRD_PARTY_DIR | grep drw | grep openmpi- | sed 's/.*openmpi-//')
		if [ ! -z "$OPENMPIVER" ]; then 
			sed -i "$MPIFILE" -e "s/FOAM_MPI=openmpi-.*/FOAM_MPI=openmpi-$OPENMPIVER/"
			OPENMPIFILE=$WM_PROJECT_DIR/etc/config.sh/example/openmpi
			if [ -f $OPENMPIFILE ]; then
				cp -p $OPENMPIFILE $WM_PROJECT_DIR/etc/config.sh/
				sed -i "$WM_PROJECT_DIR/etc/config.sh/openmpi" -e "s/FOAM_MPI=openmpi-.*/FOAM_MPI=openmpi-$OPENMPIVER/"
			fi
		fi
	fi
else
	echo "File: $RCFILE dont exist!"
	exit 0
fi

CGALVER=$(ls -l $WM_THIRD_PARTY_DIR | grep drw | grep CGAL | sed 's/.*CGAL-//')
BOOSTVER=$(ls -l $WM_THIRD_PARTY_DIR | grep drw | grep boost | sed 's/.*boost_//')
if [ -n "$CGALVER" ]; then
	RCFILE=$WM_PROJECT_DIR/etc/config.sh/CGAL
	if [ -f $RCFILE ]; then
		if [ -n "$BOOSTVER" ]; then
			echo "boost mod"
       			sed -i "$RCFILE" -e "s/^boost_version=.*/boost_version=boost_$BOOSTVER/"
		else
			echo "boost mod"
       			sed -i "$RCFILE" -e "s/^boost_version=.*/boost_version=boost-system/"
		fi
		echo "cgal mod"
		sed -i "$RCFILE" -e "s/^cgal_version=.*/cgal_version=CGAL-$CGALVER/"
	else
		echo "File: $RCFILE dont exist!"
        	exit 0
	fi
fi

SCOTCHVER=$(ls -l $WM_THIRD_PARTY_DIR | grep drw | grep scotch | sed 's/.*scotch_//')
if [ -n "$SCOTCHVER" ]; then
	RCFILE=$WM_PROJECT_DIR/etc/config.sh/scotch
	if [ -f $RCFILE ]; then
		if [ -n "$SCOTCHVER" ]; then
			echo "scotch mod"
       			sed -i "$RCFILE" -e "s/^export SCOTCH_VERSION=.*/export SCOTCH_VERSION=scotch_$SCOTCHVER/"
		fi
	else
		echo "File: $RCFILE dont exist!"
        	exit 0
	fi
fi

METISVER=$(ls -l $WM_THIRD_PARTY_DIR | grep drw | grep metis | sed 's/.*metis-//')
if [ -n "$METISVER" ]; then
	RCFILE=$WM_PROJECT_DIR/etc/config.sh/metis
	if [ -f $RCFILE ]; then
		if [ -n "$METISVER" ]; then
			echo "metis mod"
       			sed -i "$RCFILE" -e "s/^export METIS_VERSION=.*/export METIS_VERSION=metis-$METISVER/"
		fi
	else
		echo "File: $RCFILE dont exist!"
        	exit 0
	fi
fi

ZOLTANVER=$(ls -l $WM_THIRD_PARTY_DIR | grep drw | grep Zoltan | sed 's/.*Zoltan-//')
if [ -n "$ZOLTANVER" ]; then
	RCFILE=$WM_PROJECT_DIR/etc/config.sh/zoltan
	if [ -f $RCFILE ]; then
		if [ -n "$ZOLTANVER" ]; then
			echo "zoltan mod"
       			sed -i "$RCFILE" -e "s/^export ZOLTAN_VERSION=.*/export ZOLTAN_VERSION=Zoltan-$ZOLTANVER/"
		fi
	else
		echo "File: $RCFILE dont exist!"
        	exit 0
	fi
fi

