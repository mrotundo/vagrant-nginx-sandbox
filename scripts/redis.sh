#!/bin/bash

echo "Installing Redis"
apt-get install build-essential
apt-get install tcl8.5
apt-get install make
curl -sS -O http://download.redis.io/releases/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable
make
make test
make install
cd ..
./redis-stable/utils/install_server.sh
#have redis start on boot
update-rc.d redis_6379 defaults

echo "Starting Redis"
sudo service redis_6379 start
