
#!/bin/bash
yum upgrade -y
yum install --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
yum install gcc kernel-devel kernel-headers dkms make bzip2 perl wget curl vim -y
echo "complete" >> /home/vagrant/postscript.txt