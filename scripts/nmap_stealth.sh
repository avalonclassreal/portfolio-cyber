#!/bin/bash
echo "=== NMAP STEALTH $(date) ===" | tee -a ~/journal.txt

HOSTS_FILE=${1:-$HOME/hosts.txt}
TIMESTAMP=$(date +%Y%m%d_%H%M)

while IFS= read -r IP || [ -n "$IP" ]; do
    [[ -z "$IP" || "$IP" =~ ^#.*$ ]] && continue
    
    echo "STEALTH $IP → tous ports..."
    OUTPUT="stealth_${IP//./_}_${TIMESTAMP}.txt"
    
    # STEALTH SCAN PRO
    nmap -sS -sV -T2 -p- --min-rate 1000 --no-styles -oN "$OUTPUT" "$IP" | tee -a ~/journal.txt
    
    # SEULEMENT ports ouverts
    echo "PORTS OUVERTS $IP:" | tee -a ~/journal.txt
    grep "open" "$OUTPUT" | tee -a ~/journal.txt
    echo "---" | tee -a ~/journal.txt
    
done < "$HOSTS_FILE"

echo "STEALTH terminé ! stealth_*.txt"
