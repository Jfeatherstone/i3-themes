# !/bin/sh
# collect

# This file is for my own personal use to collect my various scripts from across
# my computer and put them in the folder. 

# Copy the newest version of my i3 config
cp ~/.config/i3/config i3/

# Copy all of the polybar scripts
rm -r polybar/
cp -r ~/.config/polybar/ .

# Copy dunst config
cp ~/.config/dunst/dunstrc dunst/

# Copy rofi config
cp ~/.config/rofi/ribbon.rasi rofi/

# Copy rofi script
cp ~/.config/rofi/rofi_script rofi/

# Copy conky script
cp ~/.config/conky/conky.conf conky/

# Copy both changeBrightness and changeVolume scripts
cp /usr/bin/changeVolume scripts/
cp /usr/bin/changeBrightness scripts/

# Copy the wallpaper
cp ~/.config/i3/wallpaper.jpg i3/

# Copy .Xresources for urxvt
cp ~/.Xresources X/

# Copy picom
cp ~/.config/picom/picom.conf picom/
