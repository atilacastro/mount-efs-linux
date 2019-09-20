#!/bin/sh

#name: mount-efs-linux.sh

sudo yum install -y amazon-efs-utils
sudo mkdir -p /cfd
#sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport 10.164.21.243:/ cfd
sudo echo "10.164.21.243:/ /cfd nfs4 nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 0 0" >> /etc/fstab
sudo mount -a -t nfs4