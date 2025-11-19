#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"


# Let user pick a file with tofi
CHOICE=$(ls "$WALLPAPER_DIR" | tofi -c ~/.config/Custom-Script/script/Wallpaper-Tofi/configA)

# Stop if nothing selected
[ -z "$CHOICE" ] && exit

# Set wallpaper using swww
notify-send "Wallpaper changed to $CHOICE" 
#swww img "$WALLPAPER_DIR/$CHOICE" --transition-type any --transition-duration 2 --transition-step 255 && wal -n -i $WALLPAPER_DIR/$CHOICE && killall waybar && waybar

swww img "$WALLPAPER_DIR/$CHOICE" --transition-type any --transition-duration 2 --transition-step 255 && wallust run $WALLPAPER_DIR/$CHOICE  && python3 "$HOME/.config/Custom-Script/script/Hyprlock-Wallpaper/wallpaper.py" "$CHOICE" && killall waybar && waybar
 

