#!/bin/bash

# This script sets up persistent Ethernet speed configuration using systemd

# Variables
INTERFACE="eth0"  # Change this to match your interface name
SPEED="10"

# Create the systemd service file
sudo cat << EOF | sudo tee /etc/systemd/system/ethernet-speed.service
[Unit]
Description=Set Ethernet Speed and Disable Autonegotiation
Wants=network-pre.target
Before=network-pre.target

[Service]
Type=oneshot
ExecStart=/usr/sbin/ethtool -s $INTERFACE speed $SPEED duplex full autoneg off
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

# Create a udev rule for additional assurance
sudo cat << EOF | sudo tee /etc/udev/rules.d/50-ethernet-speed.rules
ACTION=="add", SUBSYSTEM=="net", KERNEL=="$INTERFACE", RUN+="/usr/sbin/ethtool -s $INTERFACE speed $SPEED duplex full autoneg off"
EOF

# Reload systemd configuration
sudo systemctl daemon-reload

# Enable and start the service
sudo systemctl enable ethernet-speed.service
sudo systemctl start ethernet-speed.service

# Reload udev rules
sudo udevadm control --reload-rules
sudo udevadm trigger

# Verify current settings
echo "Current settings:"
ethtool $INTERFACE

# Create a script to check settings after boot
sudo cat << EOF | sudo tee /usr/local/bin/check-ethernet-speed.sh
#!/bin/bash
echo "Ethernet settings for $INTERFACE:"
/usr/sbin/ethtool $INTERFACE | grep -E "Speed:|Duplex:|Auto-negotiation:"
EOF

sudo chmod +x /usr/local/bin/check-ethernet-speed.sh
