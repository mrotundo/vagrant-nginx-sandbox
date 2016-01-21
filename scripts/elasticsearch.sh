#!/bin/bash

echo "Installing Elasticsearch"

curl -sS -O "https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.2.deb"
dpkg -i elasticsearch-1.7.2.deb
rm elasticsearch-1.7.2.deb

echo "Configuring Elasticsearch"

sudo update-rc.d elasticsearch defaults

echo "Starting Elasticsearch"

service elasticsearch start
