####################################################################
## Author: "Tech With NC"
#
## Date Created: 1/Feb/2023
## Last Modified: 1/Jun/2023
# 
## Description.
## How to install prometheus as service on ubuntu OS.
####################################################################

# Do apt update.
sudo apt update
# Step 2 - Downloading Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.43.0/prometheus-2.43.0.linux-amd64.tar.gz
# Extract downloaded file.
sudo tar xvf prometheus-2.43.0.linux-amd64.tar.gz
# Create user for prometheus.
sudo useradd --no-create-home --shell /bin/false prometheus
# Create directory for prometheus.
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
# Copy binaries file.
sudo cp prometheus-2.43.0.linux-amd64/prometheus /usr/local/bin/
sudo cp prometheus-2.43.0.linux-amd64/promtool /usr/local/bin/
sudo cp -r prometheus-2.43.0.linux-amd64/consoles /etc/prometheus
sudo cp -r prometheus-2.43.0.linux-amd64/console_libraries /etc/prometheus
# Set owner permission for prometheus user.
sudo chown prometheus:prometheus /etc/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus
sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool
sudo chown -R prometheus:prometheus /etc/prometheus/consoles
sudo chown -R prometheus:prometheus /etc/prometheus/console_libraries
# Delete downloaded file.
sudo rm -rf prometheus-2.43.0.linux-amd64.tar.gz prometheus-2.40.6.linux-amd64
# Configure Prometheus.
cat <<EOF | sudo tee /etc/prometheus/prometheus.yml
global:
  scrape_interval: 15s
scrape_configs:
  - job_name: 'prometheus'
    scrape_interval: 5s
    static_configs:
      - targets: ['YOUR-IP-ADD:9090']
EOF
# Set user and group ownership to prometheus user.
sudo chown prometheus:prometheus /etc/prometheus/prometheus.yml
# Create service for prometheus.
cat <<EOF | sudo tee /etc/systemd/system/prometheus.service
[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/usr/local/bin/prometheus \
    --config.file /etc/prometheus/prometheus.yml \
    --storage.tsdb.path /var/lib/prometheus/ \
    --web.console.templates=/etc/prometheus/consoles \
    --web.console.libraries=/etc/prometheus/console_libraries

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable prometheus
sudo systemctl start prometheus