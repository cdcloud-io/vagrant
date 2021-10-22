#!/bin/bash
wget https://packages.chef.io/files/stable/chef-workstation/21.10.640/el/8/chef-workstation-21.10.640-1.el8.x86_64.rpm -P /tmp
sudo yum localinstall /tmp/chef-workstation-21.10.640-1.el8.x86_64.rpm -y
echo eval $(chef -v)
echo "complete chef workstation install" >> /home/vagrant/postscript.txt