#!/bin/sh
# install.sh

# This file will move all of the flying-whales theme elements to where they need to be
# Must be run as su since it adds the commands changeVolume and changeBrightness to /usr/bin

# Things that are installed in this file:
# changeBrightness -> /usr/bin/ (doesn't overwrite)
# changeVolume -> /usr/bin/ (doesn't overwrite)
# i3-config -> ~/.config/i3/config (preserves old config in config.old if it exists)
# wallpaper.jpg -> ~/.config/i3/config (preserves old image in wallpaper.jpg.old if it exists)
# dunstrc -> ~/.config/dunst/dunstrc (preserves old config in dunstrc.old if it exists)
# ib.rasi -> ~/.config/rofi/ib.rasi (preserves old config in ib.rasi.old if it exists)
# rofi_script -> ~/.config/rofi/rofi_script (preserves old script in rofi_script.old if it exists)


# changeBrightness
if [ -e /usr/bin/changeBrightness ]; then
    echo "changeBrightness script already exists, not overwriting! To manually overwrite use \'cp changeBrightness /usr/bin/\'"
else
    cp changeBrightness /usr/bin/
    echo "changeBrightness script installed to /usr/bin/"
fi

# changeVolume
if [ -e /usr/bin/changeVolume ]; then
    echo "changeVolume script already exists, not overwriting! To manually overwrite use \'cp changeVolume /usr/bin/\'"
else
    cp changeVolume /usr/bin/
    echo "changeVolume script installed to /usr/bin/"
fi


# We have to make sure the .config file actually exists in the first place
if [ ! -e ~/.config ]; then
    mkdir ~/.config
    echo "Created folder ~/.config, creating subfolders..."
fi

# And the rest of the folders
    
if [ ! -e ~/.config/rofi ]; then
    mkdir ~/.config/rofi
    echo "Created ~/.config/rofi directory"
fi

if [ ! -e ~/.config/i3 ]; then
    mkdir ~/.config/i3
    echo "Created ~/.config/i3 directory"
fi

if [ ! -e ~/.config/dunst ]; then
    mkdir ~/.config/dunst
    echo "Created ~/.config/i3 directory"
fi

# i3-config
if [ -e ~/.config/i3/config ]; then
    # Move the old file
    mv ~/.config/i3/config ~/.config/i3/config.old
    mv i3-config ~/.config/i3/config
    echo "i3 config file installed to ~/.config/i3/config (old config moved to config.old)"
else
    mv i3-config ~/.config/i3/config
    echo "i3 config file installed to ~/.config/i3/config"
fi

# wallpaper
if [ -e ~/.config/i3/wallpaper.jpg ]; then
    # Move the old file
    mv ~/.config/i3/wallpaper.jpg ~/.config/i3/wallpaper.jpg.old
    mv wallpaper.jpg ~/.config/i3/wallpaper.jpg
    echo "wallpaper.jpg installed to ~/.config/i3/wallpaper.jpg (old image moved to wallpaper.jpg.old)"
else
    mv wallpaper.jph ~/.config/i3/wallpaper.jpg
    echo "wallpaper.jpg installed to ~/.config/i3/wallpaper.jpg"
fi

# dunstrc
if [ -e ~/.config/dunst/dunstrc ]; then
    # Move the old file
    mv ~/.config/dunst/dunstrc ~/.config/dunst/dunstrc.old
    mv dunstrc ~/.config/dunst/dunstrc
    echo "dunstrc installed to ~/.config/dunst/dunstrc (old config moved to dunstrc.old)"
else
    mv dunstrc ~/.config/dunst/dunstrc
    echo "dunstrc installed to ~/.config/dunst/dunstrc"
fi

# ib.rasi (rofi config)
if [ -e ~/.config/rofi/ib.rasi ]; then
    mv ~/.config/rofi/ib.rasi ~/.config/rofi/ib.rasi.old
    mv ib.rasi ~/.config/rofi/ib.rasi
    echo "ib.rasi installed to ~/.config/rofi/ib.rasi (old file moved to ib.rasi.old)"
else
    mv ib.rasi ~/.config/rofi/ib.rasi
    echo "ib.rasi installed to ~/.config/rofi/ib.rasi"
fi

# rofi_script
if [ -e ~/.config/rofi/rofi_script ]; then
    mv ~/.config/rofi/rofi_script ~/.config/rofi/rofi_script.old
    mv rofi_script ~/.config/rofi/rofi_script
    echo "rofi_script installed to ~/.config/rofi/rofi_script (old script moved to rofi_script.old)"
else
    mv rofi_script ~/.config/rofi/rofi_script
    echo "rofi_script installed to ~/.config/rofi/rofi_script"
fi


# See if we want to clean up any left over files 
read -s "Would you like to delete any remaining files in this directory? [y|n]" option

if [ option -eq "y" ]; then
    for file in .
    do
        echo "Deleting $file..."
        rm $file
    done
    echo "Cleanup done! Installation finished!"
else
    echo "Installation finished!"
fi
