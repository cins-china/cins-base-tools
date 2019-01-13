#!/usr/bin/env bash
#
# Copyright @2016 R&D CINS
#
# Author: Eric x. sun <followyourheart1211@gmail.com>
#

echo "This script is used to install linuxbrew"

echo "Install pre-required"
./linuxbrew-pre.sh

echo "Install linuxbrew"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

echo "Config"
sed -i -e "/export PATH=\"\/home\/linuxbrew\/.linuxbrew\/bin:\$PATH\"/d" ~/.bashrc
sed -i -e "/export MANPATH=\"\/home\/linuxbrew\/.linuxbrew\/share\/man:\$MANPATH\"/d" ~/.bashrc
sed -i -e "/export INFOPATH=\"\/home\/linuxbrew\/.linuxbrew\/share\/info:\$INFOPATH\"/d" ~/.bashrc

echo "export PATH=\"\/home\/linuxbrew\/.linuxbrew/bin:\$PATH\"" >> ~/.bashrc
echo "export MANPATH=\"\/home\/linuxbrew\/.linuxbrew/share/man:\$MANPATH\"" >> ~/.bashrc
echo "export INFOPATH=\"\/home\/linuxbrew\/.linuxbrew/share/info:\$INFOPATH\"" >> ~/.bashrc

source ~/.bashrc
