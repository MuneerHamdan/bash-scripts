#!/bin/bash

sudo modprobe -rv hid_appletb_kbd hid_apple
sleep 2
sudo modprobe -v hid_appletb_kbd hid_apple
sudo modprobe -rv hid_apple
sleep 2
sudo modprobe -v hid_apple
xmodmap /home/muneer/.Xmodmap
/usr/local/bin/touchbarbacklight.sh
echo 1 | sudo tee /sys/class/backlight/appletb_backlight/brightness
