#/bin/bash

apt-get update && apt-get -y upgrade > /dev/null
apt-get -y install salt-master > /dev/null
