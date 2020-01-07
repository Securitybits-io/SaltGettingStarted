#!/usr/bin/env bash
hostname web2

# First copy bashrc file that enables color text, I hate BW :(
cp /vagrant/provision-scripts/deploy-file/bashrc /home/vagrant/.bashrc
cp /vagrant/provision-scripts/deploy-file/bashrc /root/.bashrc

#echo deb http://ppa.launchpad.net/saltstack/salt/ubuntu `lsb_release -sc` main | sudo tee /etc/apt/sources.list.d/saltstack.list
#wget -q -O- "http://keyserver.ubuntu.com:11371/pks/lookup?op=get&search=0x4759FA960E27C0A6" | sudo apt-key add -
apt-get update
apt-get install -y salt-minion
echo "192.168.5.10 salt" | tee -a /etc/hosts
echo "192.168.5.11 web1" | tee -a /etc/hosts
echo "192.168.5.12 web2" | tee -a /etc/hosts
echo "192.168.5.13 nginx" | tee -a /etc/hosts
systemctl restart salt-minion
