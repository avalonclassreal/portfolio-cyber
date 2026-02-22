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
- IP statique randomisée (`[IP_MASQUEE]-249/24`)
- Gateway/DNS persistant
- Vérification connexion (`ping google.com`)

## Usage
```bash
chmod +x ipfix.sh
sudo ./ipfix.sh

## Démo Réelle
MAC: 6a:db:90:b7:93:be → 76:5d:4f:c5:4f:67
IP: [IP_MASQUEE] → [IP_MASQUEE]
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
| Scan Nmap Complet | `nmap-full-[IP_MASQUEE].txt` | `[IP_MASQUEE]` |
| Sweep Récent | **PING OK** | `[IP_MASQUEE] → [IP_MASQUEE]` |
| Metasploit Exploits | `metasploit/exploits/scan/` | Lab réel |

## NOUVEAU 20/02/2026
**'cyber_tor.sh'** -TOR +  Nettoyage traces


# Portfolio Cybersécurité - Avalon

## Projets

### Nmap Network Reconnaissance
Dossier : `nmap-labs/`

**Labs réalisés :**
- Scan localhost : ports/services (SSH, HTTP, Samba, MySQL)
- Scan réseau local : 70+ hôtes détectés (ping scan -sn)

**Commandes utilisées :**
```bash
nmap -sT -oN localhost.txt localhost
nmap -sn -oN reseau-local.txt 192.168.1.0/24
