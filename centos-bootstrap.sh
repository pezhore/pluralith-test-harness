#!/usr/bin/bash
sudo dnf -y --disablerepo '*' --enablerepo=extras swap centos-linux-repos centos-stream-repos
sudo dnf distro-sync -y

sudo yum install epel-release -y

sudo yum groupinstall "Server with GUI" -y
sudo yum groupinstall "Xfce" -y
