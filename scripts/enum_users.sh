#!/bin/bash
echo "=== USERS BASH INTERACTIFS ==="
grep "bash$" /etc/passwd | cut -d: -f1,6 | column -t
echo""
echo "=== SERVICE avec bash ==="
grep postgres /etc/passwd
echo ""
echo "=== RAPPORT PENTEST ==="
echo "Cibles potentielle: postgres (UID 132)"
echo "Home exploitable: /var/lib/postgresql"




