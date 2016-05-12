#!/usr/bin/env bash
#
# Copyright @2016 R&D CINS
#
# Author: Eric x. sun <followyourheart1211@gmail.com>
#

echo "This script is used to install pre-required for linuxbrew"

UNAMESTR=`uname -a`

if [[ "${UNAMESTR#*Darwin}" != "$UNAMESTR" ]]; then
    echo "Mac OS"
    exit 0;
elif [[ "${UNAMESTR#*Debian}" != "$UNAMESTR" || "${UNAMESTR#*Ubuntu}" != "$UNAMESTR" ]]; then
    sudo apt-get install -y build-essential curl git python-setuptools ruby
elif [[ "${UNAMESTR#*Linux}" != "$UNAMESTR" ]]; then
    sudo yum -y groupinstall 'Development Tools' && sudo yum -y install curl git irb python-setuptools ruby
fi
