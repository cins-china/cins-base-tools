#!/usr/bin/env bash
#
# Copyright @2016 R&D
#
# Author: master.cins.china
#

echo "This script is used to install linuxbrew"

echo "Install pre-required"
./linuxbrew-pre.sh

echo "Install linuxbrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/linuxbrew/go/install)"

sed -i -e "/export PATH=\"\$HOME\/.linuxbrew\/bin:\$PATH\"/d" ~/.bashrc
sed -i -e "/export MANPATH=\"\$HOME\/.linuxbrew\/share\/man:\$MANPATH\"/d" ~/.bashrc
sed -i -e "/export INFOPATH=\"\$HOME\/.linuxbrew\/share\/info:\$INFOPATH\"/d" ~/.bashrc

echo "export PATH=\"\$HOME/.linuxbrew/bin:\$PATH\"" >> ~/.bashrc
echo "export MANPATH=\"\$HOME/.linuxbrew/share/man:\$MANPATH\"" >> ~/.bashrc
echo "export INFOPATH=\"\$HOME/.linuxbrew/share/info:\$INFOPATH\"" >> ~/.bashrc

source ~/.bashrc