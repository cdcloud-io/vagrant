#!/bin/bash
wget https://packages.chef.io/files/stable/chef-server/14.10.23/el/7/chef-server-core-14.10.23-1.el7.x86_64.rpm -P /tmp
sudo yum localinstall /tmp/chef-server-core-14.10.23-1.el7.x86_64.rpm -y
sleep 3
sudo sudo chef-server-ctl reconfigure --chef-license accept-silent
echo "creating chef admin: vagrant pw: P@ssw0rd1!"
# sudo chef-server-ctl user-list
sleep 3
sudo chef-server-ctl user-create vagrant vagrant user1 vagrant@n0clouds.com 'P@ssw0rd1!' --filename /home/vagrant/vagrant.pem
echo "Creating chef-org: vagrant_org"
# sudo chef-server-ctl org-list
sleep 1
sudo chef-server-ctl org-delete vagrantorg -y
sleep 1
sudo chef-server-ctl org-create vagrantorg 'vagrant org' --association_user vagrant --filename /home/vagrant/vagrantorg-validator.pem
sudo chown vagrant:vagrant /home/vagrant/*.pem
scp /home/vagrant/*.pem chefworkstation1:/home/vagrant/

