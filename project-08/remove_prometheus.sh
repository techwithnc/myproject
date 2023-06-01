####################################################################
## Author: "Tech With NC"
#
## Date Created: 1/Feb/2023
## Last Modified: 1/Jun/2023
# 
## Description.
## Removing prometheus from ubuntu OS.
####################################################################

sudo systemctl stop prometheus
sudo userdel prometheus
sudo rm -rf /etc/prmetheus
sudo rm -rf /var/lib/prometheus
sudo rm -rf /usr/local/bin/prometheus
sudo rm -rf /usr/local/bin/promtool
sudo rm /etc/systemd/system/prometheus.service
sudo systemctl daemon-reload

