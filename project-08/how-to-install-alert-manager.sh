## How to install prometheus alert_manager as service
# Creating service user
sudo useradd --no-create-home --shell /bin/false alert_manager

# Download prometheus Alert Manager 
wget https://github.com/prometheus/alertmanager/releases/download/v0.25.0/alertmanager-0.25.0.linux-amd64.tar.gz

sudo tar xvf alertmanager-0.25.0.linux-amd64.tar.gz
sudo mkdir /etc/alertmanager
sudo cp alertmanager-0.25.0.linux-amd64/alertmanager.yml /etc/alertmanager

# Set user and group ownership to alert_manager user
sudo chown -R alert_manager:alert_manager /etc/alertmanager

sudo mkdir /var/lib/alertmanager
sudo chown -R alert_manager:alert_manager /var/lib/alertmanager

sudo cp alertmanager-0.25.0.linux-amd64/alertmanager /usr/local/bin
sudo cp alertmanager-0.25.0.linux-amd64/amtool /usr/local/bin

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