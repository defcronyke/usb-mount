#!/bin/sh

ln -s /media $HOME/mnt 2>/dev/null
sudo cp -f usb-mount@.service /etc/systemd/system/
sudo cp -f 99-usb-mount.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo systemctl daemon-reload

