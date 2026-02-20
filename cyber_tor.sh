#!/bin/bash
echo "=== CYBER TOR v2.0 ==="
echo "Nettoyage initial"
sudo rm -rf /tmp/* && rm -rf ~/.cache/*
echo "TOR Browser"
flatpak run org.torproject.torbrowser-launcher
echo "Nettoyage final"
sudo rm -rf /tmp/* && rm -rf ~/.cache/*
echo "ZÉRO TRACES !"
du -sh /tmp ~/.cache
