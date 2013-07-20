#!/bin/bash

apt-get install -y python-software-properties
add-apt-repository -y ppa:dotcloud/lxc-docker
apt-get update
apt-get install -y linux-image-extra-`uname -r` lxc-docker

cd /vagrant
docker build -t docker-registry .
