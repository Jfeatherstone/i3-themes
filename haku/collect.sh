# !/bin/sh
# collect

# This file is for my own personal use to collect my various scripts from across
# my computer and put them in the folder. 

# Copy the newest version of my i3 config
cp ~/.config/i3/config i3/

# Copy the i3 cheat sheet
cp ~/.config/i3/i3_cheatsheet.pdf i3/

# Copy dunst config
cp ~/.config/dunst/dunstrc dunst/

# Copy rofi config/script
rm rofi/*
cp ~/.config/rofi/rofi_launcher.sh rofi/

# Copy both changeBrightness and changeVolume scripts
cp /usr/bin/changeVolume scripts/
cp /usr/bin/changeBrightness scripts/

# Copy the wallpaper
cp ~/.config/i3/wallpaper.jpg i3/

# Copy picom
cp ~/.config/picom/picom.conf picom/

# Copy polybar
rm -r polybar/
cp -r ~/.config/polybar .
rm polybar/i3agenda_google_token.pickle
rm polybar/credentials.json

# Copy galendae config
cp ~/.config/galendae/config galendae/config

# Copy vim config
cp ~/.vimrc vim/vimrc

# Copy kitty
cp ~/.config/kitty/kitty.conf kitty/kitty.conf

# Find the firefox user directory and grab the css
# This was taken from https://github.com/mut-ex/minimal-functional-fox
MOZILLA_USER_DIRECTORY="$(find ~/.mozilla/firefox -maxdepth 1 -type d -regextype egrep -regex '.*[a-zA-Z0-9]+.default-release')"
CHROME_DIRECTORY="$(find $MOZILLA_USER_DIRECTORY -maxdepth 1 -type d -name 'chrome')"
cp -r $CHROME_DIRECTORY firefox/
