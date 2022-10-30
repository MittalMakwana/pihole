#!/bin/sh
sudo apt-get update && sudo apt-get upgrade -y 
sudo rpi-update -y
sudo apt-get autoremove -y

#backup pihole
pihole -a -t ~/pihole/backup/main.tar.gz
git add ~/pihole/backup/main.tar.gz
git commit -m "new backup added $(date)"
git push
## Updating pihole
sudo pihole -up


echo "Upgrade Done $(date)" >> ~/update.log
sudo reboot
