#!/bin/sh
sudo apt update
sudo apt install -y ansible
echo "Installing Ansible"
cat <<EOF >> /etc/hosts
192.168.56.2 control-node
192.168.56.3 app
192.168.56.4 db
EOF