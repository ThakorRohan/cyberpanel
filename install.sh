#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo systemctl stop mysql.service
sudo systemctl stop apache2.service
sudo systemctl stop dovecot.service
sudo systemctl stop postfix.service
sudo apt-get remove -y mysql-server apache2 dovecot-core postfix
cd /opt
wget -O installer.sh https://cyberpanel.net/install.sh
chmod +x installer.sh
sh installer.sh
sudo reboot
