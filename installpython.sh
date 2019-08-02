#!/bin/bash

# Install requirements
sudo apt-get install -y build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev zlib1g-dev openssl libffi-dev python3-dev python3-setuptools wget 

# Prepare to build
mkdir /tmp/Python36
cd /tmp/Python36

# Pull down Python 3.6, build, and install
wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tar.xz
tar xvf Python-3.6.0.tar.xz
cd /tmp/Python36/Python-3.6.0
./configure
sudo make altinstall
rm -rf env/py36
virtualenv -p python3.6 env/py36
echo 'DONE'
