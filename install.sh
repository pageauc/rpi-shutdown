#!/bin/bash
echo "Installing rpi-shutdown to ~/shutdown folder"
cd ~
mkdir -p shutdown
cd shutdown
wget -O shutdown.py https://raw.github.com/pageauc/rpi-shutdown/master/shutdown.py
wget -O readme.md https://raw.github.com/pageauc/rpi-shutdown/master/README.md
chmod +x shutdown.py

echo "rpi-shutdown install complete."
echo "See /shutdown/readme.md for details"
