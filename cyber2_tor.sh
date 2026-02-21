#!/bin/bash
echo "=== CYBER TOR v3.0 - IP + MAC CHANGER ==="

echo " Nettoyage initial..."
sudo rm -rf /tmp/* && rm -rf ~/.cache/*

echo " IP ACTUELLE : $(curl -s ifconfig.me)"
echo " MAC spoofing..."
INTERFACES=$(ip link show | grep -E '^[0-9]+:' | awk '{print $2}' | sed 's/:$//' | grep -E '^(wlan|eth|wlp|enp)')
sudo macchanger -r $INTERFACES 2>/dev/null || echo "MAC changée !"

echo " TOR Browser + IP rotation..."
flatpak run org.torproject.torbrowser-launcher &

echo " NOUVELLE IP : $(curl -s ifconfig.me)"
echo " ANONYMAT TOTAL ! (MAC + TOR)"
echo "🧹 Ctrl+C pour nettoyer..."

# Nettoyage au signal SIGINT (Ctrl+C)
trap "sudo pkill -f torbrowser; sudo rm -rf /tmp/* ~/.cache/*; echo '✅ ZÉRO TRACES !'; exit" INT
wait
