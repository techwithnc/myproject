## Removing Grafana service.
sudo apt remove -y grafana-enterprise apt-transport-https software-properties-common wget
sudo rm /usr/share/keyrings/grafana.key
sudo rm /etc/apt/sources.list.d/grafana.list
sudo systemctl daemon-reload
