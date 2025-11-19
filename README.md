# About this Hyprland Setup
This is a minimal Hyprland Setup, based on Arch linux(Recommended: Arch Minimal), using wallust. I am still working on it mostly on coloring(wallust config). This is basically set up on top of [simple hyprland](https://github.com/gaurav23b/simple-hyprland), as this project has not been updated in a while so there are few bugs, and issues, so I am trying to fix it and keep it updated and minimal.


# Why this?
 **This guide is designed for a few types of users:**

**People who are new to Hyprland and want to learn the basics.**
If you're just starting out, this guide will walk you through the setup process step by step, helping you understand what each part does as you go.

**Users who prefer building a minimal system with full control.**
Instead of using automated scripts, this guide lets you create your own Hyprland setup from scratch so you always know what’s happening and can adjust everything to fit your needs.

**Anyone who wants a clean, organized setup process.**
Information about Hyprland can be scattered across many sources, which can be confusing. This guide keeps everything in one place, giving you a smooth and efficient path to getting Hyprland up and running.

# Setup of dotfiles

## Installation:
## • Automated Installation Script
#### 1. Clone this repository in your home folder:
    git clone https://github.com/gaurav23b/simple-hyprland.git ~/simple-hyprland
#### 2. Navigate to the folder to install:
    cd ~/simple-hyprland/scripts/installer
#### 3. Run the installer script with sudo:
    sudo sh install.sh
### **Features of this scipt:**
• This script is user-centric and allows you to choose which components to install (Everything is asked, even for the core).

• While the script offers flexibility, it is recommend to installing all components for the best experience, as this is already a minimal setup.

• The installation process follows the same flow as the documentation, ensuring a structured and educational approach.

• Although designed for Arch Linux, users of Arch-based distributions may also find this script helpful.

### For more Details visit this [link](https://github.com/gaurav23b/simple-hyprland?tab=readme-ov-file#getting-started-)


# Key Bindings 🎹
After installation, you'll want to familiarize yourself with the default key bindings. Here are some essential shortcuts to get you started:

## General

`Super + T`: Open the terminal ($terminal).

`Super + B`: Open the browser ($browser).

`Super + O`: Open notes application ($notes).

`Super + C`: Open the primary editor ($editor).

`Super + S`: Open the alternative editor ($editor-alt).

`Super + F`: Open the file manager ($fileManager).

`Super + A`: Open the application menu ($menu).

`Super + M`: Exit Hyprland.


## Window Management & Workspace Navigation

`Super + Q`: Close the active window.

`Super + W`: Toggle floating mode for the active window.

`Super + J`: Toggle split mode in the Dwindle layout.

`SUPER + [Arrow Keys]`: Move focus between windows

`SUPER + SHIFT + [Arrow Keys]`: Move active window

`SUPER + CTRL + [Arrow Keys]`: Resize active window

`SUPER + [1-9]`: Switch to workspace 1-9

`SUPER + SHIFT + [1-9]`: Move active window to workspace 1-9

## Screen Brightness, Volume and Media Control

`Brightness Up`: Increase the screen brightness by 5%.

`Brightness Down`: Decrease the screen brightness by 5%.

`Volume Up`: Increase the volume by 5%.

`Volume Down`: Decrease the volume by 5%.

`Mic Mute`: Mute the microphone.

`Audio Mute`: Mute the audio.

`Play/Pause`: Toggle play/pause for media.

`Next Track`: Skip to the next track.

`Previous Track`: Go back to the previous track.

## Miscellaneous
 `Super + V`: Open the clipboard history and paste the selected item.

 `Super + P`: Open the color picker and copy the selected color to the clipboard.

 `Super + L`: Lock the screen.

 `Super + Escape`: Open the logout menu.

 `Ctrl + Escape`: Toggle the Waybar (kill if running, start if not).

 `Print Screen`: Take a screenshot of the entire screen and copy it to the clipboard.

 `Super + Print Screen`: Take a screenshot of the active window and copy it to the clipboard.

 `Super + Alt + Print Screen`: Select an area to take a screenshot and copy it to the clipboard.

**Make sure to have applications installed corresponding to the binds. Feel free to customize these keybindings to better suit your needs. You can customize these and add more in your Hyprland configuration file (~/.config/hypr/modules/keybinds.conf).**


# Credits
 Many of the configs, themes, and scripts in this guide come from the community. Thank you to everyone who contributed, especially the[Hyprland project](https://github.com/hyprwm/Hyprland) and other great repositories like [simple hyprland](https://github.com/gaurav23b/simple-hyprland). If I missed giving credit to anyone, please feel free to open a Pull Request (PR).
