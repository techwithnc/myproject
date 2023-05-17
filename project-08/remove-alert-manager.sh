## Removing Alert Manager service.
sudo systemctl stop alertmanager.service
sudo deluser alert_manager
sudo rm -rf /etc/alertmanager
sudo rm -rf /var/lib/alertmanager
sudo rm -rf /usr/local/bin/alertmanger
sudo rm -rf /usr/local/bin/amtool
sudo rm /etc/systemd/system/alertmanager.service
sudo systemctl daemon-reload
