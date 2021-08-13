#!/bin/bash

apt update
apt install -y apache2 unzip php libapache2-mod-php php-curl php-gd php-mysql memcached php-mbstring php-xml php-xmlrpc mysql-client
cd /var/www/html
wget https://en-gb.wordpress.org/latest-en_GB.zip
unzip latest-en_GB.zip
mv wordpress/* /var/www/html/
rm -r index.html wordpress *.zip
chown -R www-data:www-data /var/www/html

#login for mysql:
# #mysql -u <username> -p -h <endpoint>
# #show databases;
# #create database <dbname>;
# Steps:
# Create EC2 instance
# tagging:
# name:
# owner:
# environment:
