## Removing Node_exporter service. 
sudo systemctl stop node_exporter.service
sudo userdel node_exporter
sudo rm -rf /usr/local/bin/node_exporter
sudo rm /etc/systemd/system/node_exporter.service
sudo systemctl daemon-reload
