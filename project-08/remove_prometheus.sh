# # Removing prometheus from ubuntu.
sudo systemctl stop prometheus
sudo userdel prometheus
sudo rm -rf /etc/prmetheus
sudo rm -rf /var/lib/prometheus
sudo rm -rf /usr/local/bin/prometheus
sudo rm -rf /usr/local/bin/promtool
sudo rm /etc/systemd/system/prometheus.service
sudo systemctl daemon-reload

