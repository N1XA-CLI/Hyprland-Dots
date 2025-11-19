#!/usr/bin/env python3

import os
import textwrap
import sys

def change_wallpaper(wallpaper):

    config_path = os.path.expanduser("~/.config/hypr/hyprlock.conf")
    wallpaper_path = os.path.expanduser(f"~/Pictures/wallpapers/{wallpaper}")

    # Ensure file exists
    if not os.path.isfile(wallpaper_path):
        print(f"Error: wallpaper not found → {wallpaper_path}")
        sys.exit(1)

    config = textwrap.dedent(f"""

    source = ~/.config/hypr/wallust/colors.config

    background {{
        monitor =
        path = {wallpaper_path}
        blur_size = 2
        blur_passes = 3
    }}

    input-field {{
        monitor =
        size = 200, 50
        outline_thickness = 3
        dots_size = 0.33
        dots_spacing = 0.15
        dots_center = true
        dots_rounding = -1
        outer_color = $background
        inner_color = $foreground
        font_color = $color1
        fade_on_empty = true
        fade_timeout = 1000
        placeholder_text = <i>Input Password...</i>
        hide_input = false
        rounding = -1
        check_color = $color2
        fail_color = rgb(204, 34, 34)
        fail_text = <i>$FAIL <b>($ATTEMPTS)</b></i>
        fail_transition = 100
        capslock_color = -1
        numlock_color = -1
        bothlock_color = -1
        invert_numlock = false
        swap_font_color = false
        position = 0, -20
        halign = center
        valign = center
    }}

    label {{
        monitor =
        text = cmd[update:1000] echo "$TIME"
        color = rgba(a6adc8)
        font_size = 55
        font_family = Fira Semibold
        position$ = -100, 40
        halign = right
        valign = bottom
        shadow_passes = 5
        shadow_size = 10
    }}

    label {{
        monitor =
        text = Hello
        color = $color3
        font_size = 20
        font_family = Fira Semibold
        position = -100, 160
        halign = right
        valign = bottom
        shadow_passes = 5
        shadow_size = 10
    }}

    image {{
        monitor =
        path = {wallpaper_path}
        size = 280
        rounding = -1
        border_size = 4
        border_color = rgb(a6adc8)
        rotate = 0
        reload_time = -1
        position = 0, 200
        halign = center
        valign = center
    }}
    """)

    with open(config_path, 'w') as f:
        f.write(config)

    # Reload Hyprlock
    os.system("pkill -USR2 hyprlock")


change_wallpaper(sys.argv[1])

