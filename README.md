#Portfolio Cybersec avalonclassreal
atrix@matrix-X550CA:~/portfolio-cyber$ cat >> README.md << 'EOF'
>## Xubuntu 24k c/s - Metasploitable Cracking

**Performances PROUVÉES Xubuntu natif :**
- rockyou.txt 14M mots → 100% 9min36s ✓
- 24 862 c/s md5crypt (2x Kali VM)
- John 1.9.0 OpenMP 4 threads optimal
- incremental:lower bruteforce méthodologie

**Preuves techniques :**
- metasploitable/root.hash → Hash root réel
- metasploitable/rockyou.txt → 140Mo testés 100%
 rockyou.txt 140Mo LOCAL (14M mots 100% testé 9min36s)

# ipfix.sh - Outil Anonymisation Réseau Linux

**Changez MAC + IP en 1 commande !**

## Fonctionnalités
- MAC spoofing aléatoire (`macchanger -r`)
- IP statique randomisée (`10.218.34.50-249/24`)
- Gateway/DNS persistant
- Vérification connexion (`ping google.com`)

## Usage
```bash
chmod +x ipfix.sh
sudo ./ipfix.sh

## Démo Réelle
MAC: 6a:db:90:b7:93:be → 76:5d:4f:c5:4f:67
IP: 10.218.34.96 → 10.218.34.240
PING OK 
# Portfolio CyberSec - Nantes 2026

[![Matrix](https://img.shields.io/badge/Matrix-Cyber%20Nantes-red)](https://github.com/avalonclassreal)

## Arsenal Pentest (7 outils PRO)

| Script | Mission | Taille |
|--------|---------|--------|
| `nmap_stealth.sh` | Reconnaissance furtive | 689B |
| `nmap_ports_final.sh` | Scan ports complet | 378B |
| `enum_users.sh` | Énumération utilisateurs | 303B |
| `check_postgres.sh` | Audit PostgreSQL | 251B |
| `scan_android.sh` | Pentest Android | 241B |
| `ipfix.sh` | Netflow IPFIX | 744B |
| `update_auto.sh` | Auto-update outils | 119B |

## Preuves Lab Réelles

| Mission | Preuve | IP Cible |
|---------|--------|----------|
| Scan Nmap Complet | `nmap-full-10.113.234.21.txt` | `10.113.234.21` |
| Sweep Récent | **PING OK** | `10.218.34.96 → 10.218.34.240` |
| Metasploit Exploits | `metasploit/exploits/scan/` | Lab réel |

## NOUVEAU 20/02/2026
**'cyber_tor.sh'** -TOR +  Nettoyage traces
