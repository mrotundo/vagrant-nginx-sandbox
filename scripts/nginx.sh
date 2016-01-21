#!/bin/bash

#install nginx
echo "Installing Nginx"
apt-get install nginx

cp -f /vagrant/resources/nginx/nginx.conf /etc/nginx/nginx.conf
cp -f /vagrant/resources/nginx/conf.d/* /etc/nginx/conf.d

echo "Starting Nginx"
/etc/init.d/nginx start
