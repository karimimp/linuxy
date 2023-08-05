#system requirements
sudo apt-get install build-essential flex bison cmake zlib1g-dev libboost-system-dev libboost-thread-dev libopenmpi-dev openmpi-bin gnuplot libreadline-dev libncurses-dev libxt-dev 
sudo apt-get install qt4-dev-tools libqt4-dev libqt4-opengl-dev freeglut3-dev libqtwebkit-dev 
sudo apt-get install libscotch-dev libcgal-dev 

# build code from the source
wget https://sourceforge.net/projects/openfoamplus/files/v1812/OpenFOAM-v1812.tgz
tar -xzf OpenFOAM-v1812.tgz 

# install in /opt
cd OpenFOAM-v1812
# if you want change the projecDir to the path with /opt otherwise leave it as is
cd /opt
sudo mkdir OpenFOAM; cd OpenFOAM
mv ~/Desktop/OpenFOAM-v1812 . 
source OpenFOAM-v1812/etc/bashrc

foamSystemCheck  # this has to pass
# if you are using zsh change it to bash using:
export SHELL=/bin/bash
cd $WM_PROJECT_DIR
./Allwmake 
