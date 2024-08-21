#!/bin/bash

figlet Macchanger
sleep 2 
ifconfig wlan0 down
sleep 2
sudo macchanger -r wlan0
sleep 1
echo "Mac Address Changed"
macchanger -s wlan0
ifconfig wlan0 up
