#!/usr/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y tasksel xfce4

sudo cp /vagrant/lightdm.conf /etc/lightdm/lightdm.conf

systemctl reboot