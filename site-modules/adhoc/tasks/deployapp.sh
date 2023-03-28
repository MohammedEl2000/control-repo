#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install php8.0 mariadb10.5 -y
sudo yum install -y git httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo rm -rf /var/www/html/*
echo ${endpoint} >> test.txt
sudo su
sudo echo "<?php
define('DB_SERVER', '${endpoint}');
define('DB_USERNAME', 'user');
define('DB_PASSWORD', 'password');
define('DB_DATABASE', 'dbmysql');
?>" >> /var/www/awsdbinfo.inc
sudo git clone https://github.com/MohammedEl2000/CA2-IMD.git /var/www/html/