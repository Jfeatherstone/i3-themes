# !/bin/sh
# collect

# This file is for my own personal use to collect my various scripts from across
# my computer and put them in the folder. 

# Copy the newest version of my i3 config
cp /home/jack/.config/i3/config .

# Copy all of the polybar scripts
rm -r polybar/
cp -r /home/jack/.config/polybar/ .

# Copy dunst config
cp /home/jack/.config/dunst/dunstrc .

# Copy rofi config
cp /home/jack/.config/rofi/ib.rasi .

# Copy both changeBrightness and changeVolume scripts
cp /usr/bin/changeVolume .
cp /usr/bin/changeBrightness .

# Copy the wallpaper
cp /home/jack/.config/i3/wallpaper.jpg .


