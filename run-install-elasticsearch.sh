#!/bin/bash

es_deb_file="./elasticsearch-1.5.2.deb"
es_deb_url="https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.2.deb"
es_yml_file_loc="/etc/elasticsearch/elasticsearch.yml"

if [ ! -f $es_deb_file ]; then
  wget $es_deb_url
fi

dpkg -i $es_deb_file
#rm -r $es_yml_file_loc
#mv elasticsearch.yml $es_yml_file_loc
#service elasticsearch restart
