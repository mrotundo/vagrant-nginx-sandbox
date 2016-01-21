#!/bin/bash

echo "Installing MongoDB"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y mongodb-org

echo "Configuring MongoDB"
cp -f /vagrant/resources/mongodb/mongod.conf /etc
service mongod restart
