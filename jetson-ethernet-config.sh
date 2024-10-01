#!/bin/bash

# This script sets up persistent Ethernet speed configuration for NVIDIA Jetson

# Variables
INTERFACE="eth0"  # Change this to match your interface name
SPEED="10"

# Create a network interface configuration file
sudo cat << EOF | sudo tee /etc/network/interfaces.d/10-${INTERFACE}-speed
auto $INTERFACE
iface $INTERFACE inet dhcp
    pre-up /usr/sbin/ethtool -s $INTERFACE speed $SPEED duplex full autoneg off
EOF

# Backup the original NetworkManager connection file if it exists
NM_CONNECTION_FILE="/etc/NetworkManager/system-connections/${INTERFACE}.nmconnection"
if [ -f "$NM_CONNECTION_FILE" ]; then
    sudo cp "$NM_CONNECTION_FILE" "${NM_CONNECTION_FILE}.backup"
fi

# Create or update NetworkManager connection
sudo nmcli connection modify "$INTERFACE" \
    connection.autoconnect yes \
    connection.autoconnect-priority 1 \
    ipv4.method auto

# Create a systemd service for additional assurance
sudo cat << EOF | sudo tee /etc/systemd/system/ethernet-speed.service
[Unit]
Description=Set Ethernet Speed and Disable Autonegotiation
After=NetworkManager.service
Wants=NetworkManager.service

[Service]
Type=oneshot
ExecStart=/usr/sbin/ethtool -s $INTERFACE speed $SPEED duplex full autoneg off
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

# Enable and start the systemd service
sudo systemctl daemon-reload
sudo systemctl enable ethernet-speed.service
sudo systemctl start ethernet-speed.service

# Create a script to verify settings
sudo cat << EOF | sudo tee /usr/local/bin/check-ethernet-speed.sh
#!/bin/bash
echo "Ethernet settings for $INTERFACE:"
/usr/sbin/ethtool $INTERFACE | grep -E "Speed:|Duplex:|Auto-negotiation:"
EOF

sudo chmod +x /usr/local/bin/check-ethernet-speed.sh

# Restart networking
sudo systemctl restart networking.service
sudo systemctl restart NetworkManager.service

# Display current settings
echo "Current settings:"
ethtool $INTERFACE
