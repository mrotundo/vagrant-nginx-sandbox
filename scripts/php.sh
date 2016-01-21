#!/bin/bash

#install nginx
echo "Installing PHP"
apt-get install php-fpm php-mysql

cp -f /vagrant/resources/php/php.ini /etc/php.ini
cp -f /vagrant/resources/php/www.conf /etc/php-fpm.d/www.conf 

echo "Installing PHP Composer"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo "Starting PHP"
service php-fpm start
