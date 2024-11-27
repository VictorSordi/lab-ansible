#!/bin/sh
echo "Installing Ansible"
cat << EOF >> /etc/yum.repos.d/CentOS-Base.repo
[base]
name=CentOS-$releasever - Base
baseurl=http://mirror.centos.org/centos/7/os/x86_64/
enabled=1
gpgcheck=1
EOF
cat << EOF >> /etc/resolv.conf
nameserver 8.8.8.8
nameserver 8.8.4.4
EOF
yum-config-manager --save --setopt=mirror.centos.org.skip_if_unavailable=true
sudo yum update -y
sudo yum install -y epel-release
sudo yum install -y ansible
cat <<EOF >> /etc/hosts
192.168.56.2 control-node
192.168.56.3 app
192.168.56.4 db
EOF