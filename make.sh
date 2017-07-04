#!/bin/bash
yum install git
cd /
cd home
wget https://nodejs.org/dist/v6.11.0/node-v6.11.0.tar.gz
tar xzvf node-v6.11.0.tar.gz
yum install gcc gcc-c++
cd node-v0.10.30
./configure
make
make install
node --version
