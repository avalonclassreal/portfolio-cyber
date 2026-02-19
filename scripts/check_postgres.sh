#!/bin/bash
echo "=== CHECK POSTGRES PENTEST ==="
if grep -q  "postgres" /etc/passwd; then
echo "POSTGRES VULNERABLE détecté !"
grep "postgres" /etc/passwd
echo "ATTENTION: shell bash interactif !"
else
echo "Postgres sécurisé (pas de compte)"
fi
