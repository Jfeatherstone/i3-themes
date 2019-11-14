# !/bin/sh
# collect

# This file is for my own personal use to collect my various scripts from across
# my computer and put them in the folder. 

# Copy the newest version of my i3 config
cp ~/.config/i3/config i3-config

# Copy all of the polybar scripts
rm -r polybar/
cp -r ~/.config/polybar/ .

# Copy dunst config
cp ~/.config/dunst/dunstrc .

# Copy rofi config
cp ~/.config/rofi/ib.rasi .

# Copy rofi script
cp ~/.config/rofi/rofi_script .

# Copy both changeBrightness and changeVolume scripts
cp /usr/bin/changeVolume .
cp /usr/bin/changeBrightness .

# Copy the wallpaper
cp ~/.config/i3/wallpaper.jpg .
