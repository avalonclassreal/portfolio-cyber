#!/bin/bash
echo "===UPDATE $(date) ===" >> ~/journal.txt
sudo apt update >> ~/journal.txt 2>&1
echo "Update terminé"
