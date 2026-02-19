#!/bin/bash
echo "=== SCAN ANDROID $(date) ===" >> ~/journal.txt
nmap -sn 10.99.104.0/24 >> ~/journal.txt 2>&1
echo "Scan terminé - $(date)" >> ~/journal.txt
echo "IPs actives: $(nmap -sn 10.99.104.0/24 | grep 'Nmap scan 
report' | wc -l)"
