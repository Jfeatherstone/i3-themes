# Flying Whales

![flying-whales-empty](https://raw.githubusercontent.com/Jfeatherstone/i3-themes/master/flying-whales/flying-whales_empty.png)

![flying-whales-busy](https://raw.githubusercontent.com/Jfeatherstone/i3-themes/master/flying-whales/flying-whales_busy.png)


### Features
- Custom volume and brightness scripts with notifications using dunst
- Spotify current music in polybar
- Custom power menu script 


### Dependencies
- Python >= 3.7
- dunst
- yad


### Installation

Run the following commands to install all files to their proper locations. The install script is quite verbose and will output the location of every file that is installed. May require root access for the install script since it installs `changeVolume` and `changeBrightness` to /usr/bin. This can be changed by manually editing the file.

```
git clone https://github.com/Jfeatherstone/i3-themes
cd i3-themes/flying-whales
./install.sh
```


### Notes

Some keybindings and/or options may not work since this is specifically configured for my device. If you are having trouble figuring out what alternative you should use, feel free to message me and I can try and help you figure it out.


### Credits

##### Wallpaper
Originally from: https://www.pixiv.net/member_illust.php?mode=medium&illust_id=71070058


##### Polybar Script
Modified version of bar 2 from: https://github.com/adi1090x/polybar-themes


##### Spotify Script
Unmodified, taken from: https://github.com/Jvanrhijn/polybar-spotify


##### Rofi Theme
Slightly modified, Official Themes/Rasi from: https://github.com/davatorium/rofi-themes
