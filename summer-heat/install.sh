#!/bin/sh
# install.sh

# This file will move all of the theme elements to where they need to be
# Must be run as su since it adds the commands changeVolume and changeBrightness to /usr/bin

# Things that are installed in this file:
# scripts/changeBrightness -> /usr/bin/ (doesn't overwrite)
# scripts/changeVolume -> /usr/bin/ (doesn't overwrite)
# i3/config -> ~/.config/i3/config (preserves old config in config.old if it exists)
# i3/wallpaper.jpg -> ~/.config/i3/config (preserves old image in wallpaper.jpg.old if it exists)
# dunst/dunstrc -> ~/.config/dunst/dunstrc (preserves old config in dunstrc.old if it exists)
# rofi/rofi_launcher.sh-> ~/.config/rofi/rofi_launcher.sh (preserves old script in rofi_launcher.sh.old if it exists)
# compton/compton.conf -> ~/.config/compton/compton.conf (preserves old config in compton.conf.old if it exists)
# galendae/config -> ~/.config/galendae/config (preserves old config in config.old if it exists)
# kitty/kitty.conf -> ~/.config/kitty/kitty.conf (preserves old config in kitty.conf.old if it exists)
# vim/vimrc -> ~/.vimrc (preserves old config in .vimrc.old if it exists)
# firefox/chrome/* -> $CHROME_DIRECTORY/ (preserves userChrome and userContent if they exist)

# changeBrightness
if [ -e /usr/bin/changeBrightness ]; then
    echo "changeBrightness script already exists, not overwriting! To manually overwrite use 'cp changeBrightness /usr/bin/'i"
    echo ""
else
    cp scripts/changeBrightness /usr/bin/
    echo "changeBrightness script installed to /usr/bin/"
    echo ""
fi

# changeVolume
if [ -e /usr/bin/changeVolume ]; then
    echo "changeVolume script already exists, not overwriting! To manually overwrite use 'cp changeVolume /usr/bin/'"
    echo ""
else
    cp scripts/changeVolume /usr/bin/
    echo "changeVolume script installed to /usr/bin/"
    echo ""
fi


# We have to make sure the .config file actually exists in the first place
if [ ! -e ~/.config ]; then
    mkdir ~/.config
    echo "Created folder ~/.config, creating subfolders..."
    echo ""
fi

# And the rest of the folders
    
if [ ! -e ~/.config/rofi ]; then
    mkdir ~/.config/rofi
    echo "Created ~/.config/rofi directory"
    echo ""
fi

if [ ! -e ~/.config/i3 ]; then
    mkdir ~/.config/i3
    echo "Created ~/.config/i3 directory"
    echo ""
fi

if [ ! -e ~/.config/dunst ]; then
    mkdir ~/.config/dunst
    echo "Created ~/.config/i3 directory"
    echo ""
fi

if [ ! -e ~/.config/galendae ]; then
    mkdir ~/.coinfig/galendae
    echo "Created ~/.config/galendae directory"
    echo ""
fi

if [ ! -e ~/.config/picom ]; then
    mkdir ~/.config/picom
    echo "Created ~/.config/picom directory"
    echo ""
fi

if [ ! -e ~/.config/kitty ]; then
    mkdir ~/.config/kitty
    echo "Created ~/.config/kitty directory"
    echo ""
fi

# Now we actually move things

# i3-config
if [ -e ~/.config/i3/config ]; then
    # Move the old file
    mv ~/.config/i3/config ~/.config/i3/config.old
    cp i3/config ~/.config/i3/config
    echo "i3 config file installed to ~/.config/i3/config (old config moved to config.old)"
    echo ""
else
    cp i3/config ~/.config/i3/config
    echo "i3 config file installed to ~/.config/i3/config"
    echo ""
fi

# wallpaper
if [ -e ~/.config/i3/wallpaper.jpg ]; then
    # Move the old file
    mv ~/.config/i3/wallpaper.jpg ~/.config/i3/wallpaper.jpg.old
    cp i3/wallpaper.jpg ~/.config/i3/wallpaper.jpg
    echo "wallpaper.jpg installed to ~/.config/i3/wallpaper.jpg (old image moved to wallpaper.jpg.old)"
    echo ""
else
    cp i3/wallpaper.jph ~/.config/i3/wallpaper.jpg
    echo "wallpaper.jpg installed to ~/.config/i3/wallpaper.jpg"
    echo ""
fi

# dunstrc
if [ -e ~/.config/dunst/dunstrc ]; then
    # Move the old file
    mv ~/.config/dunst/dunstrc ~/.config/dunst/dunstrc.old
    cp dunst/dunstrc ~/.config/dunst/dunstrc
    echo "dunstrc installed to ~/.config/dunst/dunstrc (old config moved to dunstrc.old)"
    echo ""
else
    cp dunst/dunstrc ~/.config/dunst/dunstrc
    echo "dunstrc installed to ~/.config/dunst/dunstrc"
    echo ""
fi

# rofi_script
if [ -e ~/.config/rofi/rofi_launcher.sh ]; then
    mv ~/.config/rofi/rofi_launcher.sh~/.config/rofi/rofi_launcher.sh.old
    cp rofi/rofi_launcher.sh ~/.config/rofi/rofi_launcher.sh
    echo "rofi_launcher.sh installed to ~/.config/rofi/rofi_launcher.sh (old script moved to rofi_launcher.sh.old)"
    echo ""
else
    mv rofi/rofi_launcher.sh ~/.config/rofi/rofi_launcher.sh
    echo "rofi_launcher.sh installed to ~/.config/rofi/rofi_launcher.sh"
    echo ""
fi

# kitty
if [ -e ~/.config/kitty/kitty.conf ]; then
    mv ~/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf.old
    cp kitty/kitty.conf ~/.config/kitty/kitty.conf
    echo "kitty.conf installed to ~/.config/kitty/kitty.conf (old config moved to kitty.conf.old)"
    echo ""
else  
    cp kitty/kitty.conf ~/.config/kitty/kitty.conf
    echo "kitty.conf installed to ~/.config/kitty/kitty.conf"
    echo ""
fi

# Galendae
if [ -e ~/.config/galendae/config ]; then
    mv ~/.config/galendae/config ~/.config/galendae/config.old
    cp galendae/config ~/.config/galendae/config
    echo "galendae config installed to ~/.config/galendae/config (old config moved to config.old)"
    echo ""
else
    cp galendae/config ~/.config/galendae/config
    echo "galendae config installed to ~/.config/galendae/config"
    echo ""
fi


# Picom
if [ -e ~/.config/picom/picom.conf ]; then
    mv ~/.config/picom/picom.conf ~/.config/picom/picom.conf.old
    cp picom/picom.conf ~/.config/picom/picom.conf
    echo "picom config installed to ~/.config/picom/picom.conf (old config moved to picom.conf.old)"
    echo ""
else    
    cp picom/picom.conf ~/.config/picom/picom.conf
    echo "picom config installed to ~/.config/picom/picom.conf"
    echo ""
fi

# Vim
if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.old
    cp vim/vimrc ~/.vimrc
    echo "vim config installed to ~/.vimrc (old config moved to ~/.vimrc.old)"
    echo "You may need to run :PluginInstall to update Vundle plugins"
    echo ""
else    
    cp vim/vimrc /.vimrc
    echo "vim config installed to ~/.vimrc"
    echo "You may need to run :PluginInstall to update Vundle plugins"
    echo ""
fi

# Firefox
# We have to first find the chrome directory though
# This was taken from https://github.com/mut-ex/minimal-functional-fox
MOZILLA_USER_DIRECTORY="$(find ~/.mozilla/firefox -maxdepth 1 -type d -regextype egrep -regex '.*[a-zA-Z0-9]+.default-release')"
CHROME_DIRECTORY="$(find $MOZILLA_USER_DIRECTORY -maxdepth 1 -type d -name 'chrome')"

if [ -e $CHROME_DIRECTORY/userChrome.css ]; then
    mv $CHROME_DIRECTORY/userChrome.css $CHROME_DIRECTORY/userChrome.css.old
    echo "Firefox userChrome.css moved to userChrome.css.old"
    echo ""
fi
if [ -e $CHROME_DIRECTORY/userContent.css ]; then
    mv $CHROME_DIRECTORY/userContent.css $CHROME_DIRECTORY/userContent.css.old
    echo "Firefox userContent.css moved to userContent.css.old"
    echo ""
fi
# Now move all of the stuff
cp firefox/chrome/* $CHROME_DIRECTORY/

echo "Installation completed! This directory can now be safely deleted!"
echo "If you have any issues with my theme, or want to recommend edits, please submit an issue on the Github page"
echo "https://github.com/Jfeatherstone/i3-themes"
echo "Thanks for using my theme!"
