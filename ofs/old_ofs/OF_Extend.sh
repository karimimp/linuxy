# FOAM-extend - main branch
sudo apt-get install git-core build-essential binutils-dev cmake flex
sudo apt-get install zlib1g-dev qt4-dev-tools libqt4-dev libncurses5-dev libiberty-dev
sudo apt-get install libxt-dev rpm mercurial graphviz python python-dev
sudo apt-get install openmpi-bin libopenmpi-dev
mkdir $HOME/foam
cd $HOME/foam
git clone -b nextRelease git://git.code.sf.net/p/foam-extend/foam-extend-4.0 foam-extend-4.1

cd ~/foam/foam-extend-4.0

echo export WM_THIRD_PARTY_USE_BISON_27=1  >> etc/prefs.sh
echo export QT_SELECT=qt4  >> etc/prefs.sh
echo "export WM_CC='gcc-5'"  >> etc/prefs.sh
echo "export WM_CXX='g++-5'"  >> etc/prefs.sh
echo "export QT_BIN_DIR=/usr/bin/" >> etc/prefs.sh
source etc/zshrc
echo "alias fe40='source \$HOME/foam/foam-extend-4.1/etc/zshrc'" >> $HOME/.zshrc

sed -i -e 's=rpmbuild --define=rpmbuild --define "_build_id_links none" --define=' ThirdParty/tools/makeThirdPartyFunctionsForRPM
sed -i -e 's/gcc/\$(WM_CC)/' wmake/rules/linux64Gcc/c
sed -i -e 's/g++/\$(WM_CXX)/' wmake/rules/linux64Gcc/c++

./Allwmake.firstInstall > log_Allwmake.firstInstall # takes 4-5 hours
