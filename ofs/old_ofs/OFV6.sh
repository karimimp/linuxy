### OpenFOAM
# OpenFOAM V6 & ParaView 5.4.0
sudo sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -"
sudo add-apt-repository http://dl.openfoam.org/ubuntu
sudo apt update
sudo apt-get -y install openfoam6
# upgrading OF only
sudo apt-get update
sudo apt-get install --only-upgrade openfoam6

