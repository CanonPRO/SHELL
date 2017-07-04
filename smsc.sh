#!/bin/bash
cd /
cd /var/www/html
wget https://github.com/bulktrade/SMSC/archive/master.zip
unzip master.zip
cd /var/www/html/SMSC-master/modules/admin
npm install
npm start
