#!/bin/sh
# install.sh

# This file will move all of the flying-whales theme elements to where they need to be
# Must be run as su since it adds the commands changeVolume and changeBrightness to /usr/bin

# Things that are installed in this file:
# changeBrightness -> /usr/bin/ (doesn't overwrite)
# changeVolume -> /usr/bin/ (doesn't overwrite)
# i3-config -> ~/.config/i3/config (preserve old config in config.old if it exists)
# 

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
