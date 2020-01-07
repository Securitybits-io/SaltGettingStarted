#!/usr/bin/env bash
hostname nginx

# First copy bashrc file that enables color text, I hate BW :(
cp /vagrant/provision-scripts/deploy-file/bashrc /home/vagrant/.bashrc
cp /vagrant/provision-scripts/deploy-file/bashrc /root/.bashrc

#add salt private ssh key

apt-get update
apt-get install -y salt-minion
echo "192.168.5.10 salt" | tee -a /etc/hosts
echo "192.168.5.11 web1" | tee -a /etc/hosts
echo "192.168.5.12 web2" | tee -a /etc/hosts
echo "192.168.5.13 nginx" | tee -a /etc/hosts
systemctl restart salt-minion
