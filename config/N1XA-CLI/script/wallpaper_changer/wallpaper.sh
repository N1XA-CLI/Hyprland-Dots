#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"
rofi_dir="$HOME/.config/rofi/launchers/type-7"
theme='style-6'

# Let user pick a file with tofi
CHOICE=$(ls "$WALLPAPER_DIR" | tofi -c ~/.config/N1XA-CLI/script/wallpaper_changer/configA)
#CHOICE=$(ls "$WALLPAPER_DIR" | /home/levi/.config/Custom-Script/script/Wallpaper-Changer/type-7/launcher.sh)

# Stop if nothing selected
[ -z "$CHOICE" ] && exit

# Set wallpaper using swww
notify-send "Wallpaper changed to $CHOICE" 
#swww img "$WALLPAPER_DIR/$CHOICE" --transition-type any --transition-duration 2 --transition-step 255 && wal -n -i $WALLPAPER_DIR/$CHOICE && killall waybar && waybar

swww img "$WALLPAPER_DIR/$CHOICE" --transition-type any --transition-duration 3 --transition-step 255 && wallust run $WALLPAPER_DIR/$CHOICE  && python3 "$HOME/.config/N1XA-CLI/script/Hyprlock-Wallpaper/wallpaper.py" "$CHOICE" && killall waybar && waybar
