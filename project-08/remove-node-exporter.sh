####################################################################
## Author: "Tech With NC"
#
## Date Created: 1/Feb/2023
## Last Modified: 1/Jun/2023
# 
## Description.
## Removing node_exporter from ubuntu OS.
####################################################################

sudo systemctl stop node_exporter.service
sudo userdel node_exporter
sudo rm -rf /usr/local/bin/node_exporter
sudo rm /etc/systemd/system/node_exporter.service
sudo systemctl daemon-reload
