#!/bin/bash

es_deb_file="./elasticsearch-0.90.7.deb"
es_deb_url="https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.2.deb"

if [ !-f "$es_deb_file" ] then
  wget $es_deb_url;
fi

dpkg -i elasticsearch-0.90.7.deb
rm -r /etc/elasticsearch/elasticsearch.yml
mv elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
service elasticsearch restart
