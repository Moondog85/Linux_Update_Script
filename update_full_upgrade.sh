#!/bin/bash
#simple update - upgrade followed by an autoremove to remove unused dependencies.

sudo apt-get update
sleep 1
sudo apt full-upgrade -y
sleep 1
sudo apt autoremove
sleep 1
[ -f /var/run/reboot-required ] && sudo reboot -f
echo "Have a wonderful day :>"
