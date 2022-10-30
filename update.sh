#!/bin/sh
sudo apt-get update && sudo apt-get upgrade -y 
sudo rpi-update -y
sudo apt-get autoremove -y
sudo apt-get au
pihole -a -t ~/pihole/backup/main.tar.gztoclean -y

## Updating pihole
sudo pihole -up


echo "Upgrade Done $(date)" >> ~/update.log
sudo reboot
