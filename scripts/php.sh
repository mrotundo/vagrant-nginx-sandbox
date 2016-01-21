#!/bin/bash

#install nginx
echo "Installing PHP"
apt-get -y install php5-fpm php5-mysql php5-common php5-curl php5-cli

#cp -f /vagrant/resources/php/php.ini /etc/php.ini
cp -f /vagrant/resources/php/www.conf /etc/php5/fpm/pool.d/www.conf 

echo "Installing PHP Composer"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo "Starting PHP"
service php5-fpm start
