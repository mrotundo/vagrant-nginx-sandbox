#!/bin/bash

#install nginx
echo "Installing Nginx"
apt-get -y install nginx

cp -f /vagrant/resources/nginx/nginx.conf /etc/nginx/nginx.conf
cp -f /vagrant/resources/nginx/sites-available/* /etc/nginx/sites-available

echo "Starting Nginx"
/etc/init.d/nginx start
