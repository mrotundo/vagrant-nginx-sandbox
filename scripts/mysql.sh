#!/bin/bash

echo "Installing MySQL"
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
apt-get install -y vim curl python-software-properties
apt-get -y install mysql-server
sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf
mysql -u root --password=root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES;"
service mysql restart
