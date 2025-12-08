#!/bin/bash

Animation_Dir="$HOME/.config/hypr/modules/animation/"

CHOICE=$(ls "$Animation_Dir" | rofi -dmenu)

# Stop if nothing selected
[ -z "$CHOICE" ] && exit

# Set wallpaper using swww
notify-send "Animation changed to $CHOICE" 

python3 ~/.config/N1XA-CLI/script/animation-changer/change_theme.py "$CHOICE"
