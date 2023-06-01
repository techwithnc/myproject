####################################################################
## Author: "Tech With NC"
#
## Date Created: 1/Feb/2023
## Last Modified: 1/Jun/2023
# 
## Description.
## Removing grafana from ubuntu OS.
####################################################################

sudo apt remove -y grafana-enterprise apt-transport-https software-properties-common wget
sudo rm /usr/share/keyrings/grafana.key
sudo rm /etc/apt/sources.list.d/grafana.list
sudo systemctl daemon-reload
