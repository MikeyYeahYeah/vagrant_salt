#/bin/bash

apt-get update && apt-get -y upgrade > /dev/null
apt-get -y install salt-minion > /dev/null
sed -i 's/#master: salt/master: 192.168.1.2/' /etc/salt/minion > /dev/null
service salt-minion restart > /dev/null
