# PENTEST LAB matrix-x550CA - 2026-02-09
## RECON NAIREAU
ip a | grep inet
nmap -sn 10.160.104.0/24
## VULN CRITIQUE TROUVÉE
nmap -p80 --script http-enum 10.160.104.218
curl http://10.160.104.218/server-status/
## FIX SÉCURITÉ
sudo a2dismod status
sudo systemctl reload apache2
## KILL SERVICES
sudo systemctl stop apache2
Active: inactive (dead)
STATUT: LAB TERMINÉ
