####################################################################
## Author: "Tech With NC"
#
## Date Created: 1/Feb/2023
## Last Modified: 1/Jun/2023
# 
## Description.
## Removing Alert Manger from ubuntu OS.
####################################################################

sudo systemctl stop alertmanager.service
sudo deluser alert_manager
sudo rm -rf /etc/alertmanager
sudo rm -rf /var/lib/alertmanager
sudo rm -rf /usr/local/bin/alertmanger
sudo rm -rf /usr/local/bin/amtool
sudo rm /etc/systemd/system/alertmanager.service
sudo systemctl daemon-reload
