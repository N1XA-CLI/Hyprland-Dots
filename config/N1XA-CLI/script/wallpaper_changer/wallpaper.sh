#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"
rofi_dir="$HOME/.config/rofi/launchers/type-7"
theme='style-6'

# Let user pick a file with tofi
CHOICE=$(ls "$WALLPAPER_DIR" | tofi -c ~/.config/N1XA-CLI/script/wallpaper_changer/configA)
# CHOICE=$(ls "$WALLPAPER_DIR" | rofi -dmenu)

# Stop if nothing selected
[ -z "$CHOICE" ] && exit

# Set wallpaper using swww
notify-send "Wallpaper changed to $CHOICE" 
swww img "$WALLPAPER_DIR/$CHOICE" --transition-type any --transition-duration 3 --transition-step 255 && wallust run $WALLPAPER_DIR/$CHOICE  && python3 "$HOME/.config/N1XA-CLI/script/Hyprlock-Wallpaper/wallpaper.py" "$CHOICE" && killall waybar && waybar
# swww img "$WALLPAPER_DIR/$CHOICE" --transition-type any --transition-duration 3 --transition-step 255 && hellwal -i $WALLPAPER_DIR/$CHOICE -m  && python3 "$HOME/.config/N1XA-CLI/script/Hyprlock-Wallpaper/wallpaper.py" "$CHOICE" && killall waybar && waybar
