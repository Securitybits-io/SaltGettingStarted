#!/usr/bin/env bash
hostname unsalted

# First copy bashrc file that enables color text, I hate BW :(
cp /vagrant/provision-scripts/deploy-file/bashrc /home/vagrant/.bashrc
cp /vagrant/provision-scripts/deploy-file/bashrc /root/.bashrc

#add salt private ssh key
cat /vagrant/provision-scripts/deploy-file/id_rsa.salt.pub >> /home/vagrant/.ssh/authorized_keys
chmod 0644 /home/vagrant/.ssh/authorized_keys
chown vagrant:vagrant /home/vagrant/.ssh/authorized_keys

echo "192.168.5.10 salt" | tee -a /etc/hosts
echo "192.168.5.11 devminion" | tee -a /etc/hosts
echo "192.168.5.12 prodminion" | tee -a /etc/hosts
echo "192.168.5.13 unsalted" | tee -a /etc/hosts
