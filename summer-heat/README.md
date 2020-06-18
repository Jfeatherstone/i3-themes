# Summer Heat

### Features
- Custom volume and brightness scripts with notifications using dunst
- Spotify current music in polybar
- Package update indicator
- Pop-up calendar widget

### Dependencies
- Python >= 3.7
- polybar
- dunst
- yad
- kitty
- feh
- paplay
- galendae
- picom (compton)
- uim (Anthy for Japanese text)
- vim and Vundle (or just adapt the vimrc for a different manager)
- Arandr (not required, but has a keybind)
- pavu (not required, but has a keybind)


### Installation

Run the following commands to install all files to their proper locations. The install script is quite verbose and will output the location of every file that is installed. May require root access for the install script since it installs `changeVolume` and `changeBrightness` to /usr/bin. This can be changed by manually editing the file.

```
git clone https://github.com/Jfeatherstone/i3-themes
cd i3-themes/summer-heat/
./install.sh
```


### Notes

Some keybindings and/or options may not work since this is specifically configured for my device. If you are having trouble figuring out what alternative you should use, feel free to message me and I can try and help you figure it out.


### Credits

##### Wallpaper
From ドレミファ空次郎 on Pixiv: https://www.pixiv.net/en/artworks/81716003

##### Polybar Config
Modified version of polybar-8 from: https://github.com/adi1090x/polybar-themes

##### Spotify Script
Unmodified, taken from: https://github.com/Jvanrhijn/polybar-spotify

##### GCal Polybar Script
Unmodified, taken from: https://github.com/rosenpin/i3-agenda

##### Rofi Theme

