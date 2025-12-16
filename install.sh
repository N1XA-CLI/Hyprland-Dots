#!/bin/bash

echo "Copying configs... to ~/.config/"

# Copy the config
mkdir -p ~/.config
cp -r config/* ~/.config/


echo "Copying sddm config"

sudo mkdir /usr/share/sddm
sudo cp -r sddm/* /usr/sddm/ 