#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get -y -q install curl nginx mysql-server php5-cli php5-fpm php5-mysql

rm /etc/nginx/sites-available/default
ln -s /vagrant/app/config/provisioning/vhost-nginx.conf /etc/nginx/sites-available/default

service nginx restart

mysql -u root -e "CREATE DATABASE sesamehub CHARACTER SET utf8"
mysql -u root -e "GRANT ALL PRIVILEGES ON sesamehub.* TO 'sesamehub'@'localhost' IDENTIFIED BY 'dev'"

curl -sS https://getcomposer.com/installer | php -- --install-dir=/usr/local/bin --filename=composer
