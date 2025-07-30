#!/bin/bash

REPEAT=y

while  [ $REPEAT == y ]
do
	echo ""
	echo "Which file you want to push to GitHub?"
	echo "[01] - Bash"
	echo "[02] - Hypridle"
	echo "[03] - Hyprland"
	echo "[04] - Hyprlock"
	echo "[05] - NVIM"
	echo "[06] - Push.sh"
	echo "[07] - Waybar - Config"
	echo "[08] - Waybar - Style"
	echo "[09] - Waypaper"
	echo "[10] - Wlogout - Layout"
	echo "[11] - Wlogout - Style"
	echo ""
	echo "Choose :"
	read CHOOSE

	# Add a files based on the choosen option
	if [ $CHOOSE == 1 ]; then
		git add bash/.bashrc
	elif [ $CHOOSE == 2 ]; then
		git add hypr/.config/hypr/hypridle.conf
	elif [ $CHOOSE == 3 ]; then
		git add hypr/.config/hypr/hyprland.conf
	elif [ $CHOOSE == 4 ]; then
		git add hypr/.config/hypr/hyprlock.conf
	elif [ $CHOOSE == 5 ]; then
		git add nvim/.config/nvim/
	elif [ $CHOOSE == 6 ]; then
		git add push.sh
	elif [ $CHOOSE == 7 ]; then
		git add waybar/.config/waybar/config.jsonc
	elif [ $CHOOSE == 8 ]; then
		git add waybar/.config/waybar/style.css
	elif [ $CHOOSE == 9 ]; then
		git add waypaper/.config/waypaper/config.ini
	elif [ $CHOOSE == 10 ]; then
		git add wlogout/.config/wlogout/layout
	elif [ $CHOOSE == 11 ]; then
		git add wlogout/.config/wlogout/style.css
	else
		echo "That's not an option!"
		exit 1
	fi
	
	# Asking for the loop
	echo ""
	echo "Want to add more file? y/n"
	read REPEAT

	#Checking the answer
	if [[ $REPEAT != y && $REPEAT != n ]]; then
		echo "Don't be joking around!"
		exit 1
	fi
done

# Commiting with message
echo ""
echo "Message : "
read MESSAGE
git commit -m "$MESSAGE"

# Push to main branch
git push origin main
