#!/bin/bash
#
# Script to fix top row media keys of Acer C720 Chromebook running Arch Linux
#

## functions ##

fix_keyboard_keys() {
	# make backup of original pc config file
	sudo cp -n /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.bck

	# copy new pc config file
	sudo cp pc /usr/share/X11/xkb/symbols/

	# update config
	sudo rm -rf /var/lib/xkb/*
}

# apply keyboard remapping
fix_keyboard_keys
echo "*******************************************************"
echo "Remapped top row media keys"

## reboot
echo "*******************************************************"
read -p "Your Chromebook will now reboot! Press any key to continue..."
sudo shutdown -r now
