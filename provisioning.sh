#!/bin/bash
export LC_ALL=C
apt-get update -y
apt-get upgrade -y 
apt-get install ansible -y
apt-get install python-pip -y
apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual -y
apt-get install apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
apt-get update -y
apt-get install docker-engine -y
service docker start
pip install --upgrade pip
pip install docker-py
pip install docker-compose
git clone https://github.com/docker/example-voting-app
cd example-voting-app
docker-compose up
