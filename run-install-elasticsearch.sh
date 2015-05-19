wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.deb
dpkg -i elasticsearch-0.90.7.deb
rm -r /etc/elasticsearch/elasticsearch.yml
mv elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
service elasticsearch restart
