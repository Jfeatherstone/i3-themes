# Bebop

![bebop_empty](https://raw.githubusercontent.com/Jfeatherstone/i3-themes/master/bebop/bebop_empty.png)

![bebop_busy](https://raw.githubusercontent.com/Jfeatherstone/i3-themes/master/bebop/bebop_busy.png)


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
cd i3-themes/bebop/
./install.sh
```


### Notes

Some keybindings and/or options may not work since this is specifically configured for my device. If you are having trouble figuring out what alternative you should use, feel free to message me and I can try and help you figure it out.


### Credits

##### Wallpaper
Originally from https://www.pixiv.net/en/artworks/55005860 (Link seems to be dead, I'll try and find wherever it is posted now)


##### Polybar Script
Not sure yet


##### Spotify Script
Unmodified, taken from: https://github.com/Jvanrhijn/polybar-spotify


##### Package Updates Script
Unmodified, taken from: https://github.com/adi1090x/polybar-themes


##### Rofi Theme
Not sure yet


##### i3-agenda
Unmodified, taken from: https://github.com/rosenpin/i3-agenda
