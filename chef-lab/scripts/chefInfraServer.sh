#!/bin/bash
wget https://packages.chef.io/files/stable/chef-server/14.10.23/el/7/chef-server-core-14.10.23-1.el7.x86_64.rpm -P /tmp
sudo yum localinstall /tmp/chef-workstation-21.10.640-1.el7.x86_64.rpm -y

