#!/bin/bash
INTERFACE="wlp2s0"
RANDOM_IP="10.218.34.$((50 + RANDOM % 200))"

echo "Changement MAC aléatoire..."
sudo ip link set $INTERFACE down
sudo macchanger -r $INTERFACE
sudo ip link set $INTERFACE up
sleep 2

# IP aléatoire PERMANENTE ← DÉCOMMENTEZ !
CONNECTION=$(nmcli -t -f NAME,DEVICE con show --active | grep "$INTERFACE" | cut -d':' -f1)
echo "WiFi: $CONNECTION"

sudo nmcli con mod "$CONNECTION" ipv4.method manual ipv4.addresses "$RANDOM_IP/24" ipv4.gateway "10.218.34.161" ipv4.dns "8.8.8.8 8.8.4.4"

sudo nmcli con reload
sudo nmcli con up "$CONNECTION"

sleep 2
echo "🎭 === NOUVELLE IDENTITÉ TOTALE ==="
echo "MAC: $(ip link show $INTERFACE | grep ether | awk '{print $2}')"
echo "IP:  $RANDOM_IP"
ping -c 2 google.com
