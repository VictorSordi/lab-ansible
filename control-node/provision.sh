#!/bin/sh
echo "Installing Ansible"
sudo apt update -y
sudo apt install -y ansible
cat <<EOF >> /etc/hosts
192.168.56.2 control-node
192.168.56.3 app
192.168.56.4 db
EOF