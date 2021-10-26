#!/bin/bash
wget https://packages.chef.io/files/stable/chef-workstation/21.10.640/el/7/chef-workstation-21.10.640-1.el7.x86_64.rpm -P /tmp
sudo yum localinstall https://packages.chef.io/files/stable/chef-workstation/21.10.640/el/7/chef-workstation-21.10.640-1.el7.x86_64.rpm -y
echo eval $(chef -v)
echo "complete chef workstation install" >> /home/vagrant/postscript.txt
echo 'export PATH="/opt/chef-workstation/bin/:/opt/chef-workstation/embedded/bin:$PATH"' >> /home/vagrant/.bashrc
echo 'eval "$(chef shell-init bash)"' >> /home/vagrant/.bashrc
chef generate repo chef-repo --chef-license accept-silent
