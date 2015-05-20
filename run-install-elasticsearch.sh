#!/bin/bash

es_deb_file="./elasticsearch-1.5.2.deb"
es_deb_url="https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.2.deb"
es_yml_file_loc="/etc/elasticsearch/elasticsearch.yml"
es_install_loc=""

if [ ! -f $es_deb_file ]; then
  wget $es_deb_url
fi

if sudo service --status-all | grep "elasticsearch"; then
    echo "service is installed"
    #sudo service elasticsearch stop
    #Todo: uninstall elasticsearch
fi

dpkg -i $es_deb_file
sudo rm -r $es_yml_file_loc
sudo mv elasticsearch.yml $es_yml_file_loc
sudo service elasticsearch restart
