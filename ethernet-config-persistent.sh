#!/bin/bash

# This script sets up persistent Ethernet port speed configuration

# Variables
INTERFACE="eth0"  # Change this to match your interface name
SPEED="10"
NETPLAN_FILE="/etc/netplan/01-netcfg.yaml"

# Create backup of current netplan config
sudo cp $NETPLAN_FILE "${NETPLAN_FILE}.backup"

# Create new netplan configuration
sudo cat << EOF | sudo tee $NETPLAN_FILE
network:
  version: 2
  renderer: networkd
  ethernets:
    $INTERFACE:
      dhcp4: true
      links:
        autonegotiation: false
        speed: $SPEED
        duplex: full
EOF

# Apply the new configuration
sudo netplan apply

# Create a systemd service to ensure settings are applied on boot
sudo cat << EOF | sudo tee /etc/systemd/system/ethernet-speed.service
[Unit]
Description=Set Ethernet Speed and Disable Autonegotiation
After=network.target

[Service]
Type=oneshot
ExecStart=/usr/sbin/ethtool -s $INTERFACE speed $SPEED duplex full autoneg off
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

# Enable and start the service
sudo systemctl enable ethernet-speed.service
sudo systemctl start ethernet-speed.service

# Verify current settings
echo "Current settings:"
ethtool $INTERFACE
