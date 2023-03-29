#!/bin/bash
sudo su
sudo yum update -y
sudo amazon-linux-extras install php8.0 mariadb10.5 -y
sudo yum install -y git httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo rm -rf /var/www/html/*
sudo git clone https://github.com/MohammedEl2000/CA2-IMD.git /var/www/html/