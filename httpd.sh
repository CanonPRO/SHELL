#!/bin/bash
#Скрипт настраивающий и устанавливающий нужных программ
yum update
yum install git
yum install -y httpd
systemctl enable httpd
systemctl start httpd
netstat -tulnp | grep httpd
yum install -y php
yum install -y php-mysql php-mbstring php-mcrypt php-devel php-xml php-gd
systemctl restart httpd
yum install -y mariadb mariadb-server
systemctl enable mariadb.service
systemctl start mariadb
netstat -tulnp | grep mysqld
/usr/bin/mysql_secure_installation
systemctl restart mariadb
