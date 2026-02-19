#!/bin/bash
HOSTS_FILE="$1"

echo "SCAN PORTS FINAL - $(date)"
echo "Fichier: $HOSTS_FILE"

while IFS= read -r ip; do
  [[ -z "$ip" || "$ip" =~ ^# ]] && continue
    
  echo "SCAN DÉTAILLÉ → $ip"
  sudo nmap -Pn -sV -sC -O -p- --min-rate 5000 "$ip" -oN "ports_${ip//./_}.txt"
  
  echo "$ip → ports_${ip//./_}.txt"
done < "$HOSTS_FILE"

echo "Scan ports FINAL terminé !"
