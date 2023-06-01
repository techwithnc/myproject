####################################################################
## Author: "Tech With NC"
#
## Date Created: 1/Feb/2023
## Last Modified: 1/Jun/2023
# 
## Description.
## How to install prometheus alert_manager as service in ubuntu OS.
####################################################################

# Creating user for alert_manager.
sudo useradd --no-create-home --shell /bin/false alert_manager
# Download prometheus Alert Manager 
wget https://github.com/prometheus/alertmanager/releases/download/v0.25.0/alertmanager-0.25.0.linux-amd64.tar.gz
# Extract download file.
sudo tar xvf alertmanager-0.25.0.linux-amd64.tar.gz
# Create directory.
sudo mkdir /etc/alertmanager
sudo mkdir /var/lib/alertmanager
# Copy necessary files.
sudo cp alertmanager-0.25.0.linux-amd64/alertmanager.yml /etc/alertmanager
sudo cp alertmanager-0.25.0.linux-amd64/alertmanager /usr/local/bin
sudo cp alertmanager-0.25.0.linux-amd64/amtool /usr/local/bin
# Set user and group ownership to alert_manager user
sudo chown -R alert_manager:alert_manager /etc/alertmanager
sudo chown -R alert_manager:alert_manager /var/lib/alertmanager
sudo chown -R alert_manager:alert_manager /usr/local/bin/alertmanager
sudo chown -R alert_manager:alert_manager /usr/local/bin/amtool
# Delete downloaded file
sudo rm -rf alertmanager-0.25.0.linux-amd64.tar.gz alertmanager-0.25.0.linux-amd64
# Create service for Alert Manager
cat <<EOF | sudo tee /etc/systemd/system/alertmanager.service
[Unit]
Description=Alert Manager
Wants=network-online.target
After=network-online.target
[Service]
User=alert_manager
Group=alert_manager
Type=simple
ExecStart=/usr/local/bin/alertmanager \
--config.file=/etc/alertmanager/alertmanager.yml \
--storage.path=/var/lib/alertmanager
Restart=always
[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable alertmanager.service
sudo systemctl start alertmanager.service
