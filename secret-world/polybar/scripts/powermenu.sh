# !/bin/sh
# powermenu.sh


# Make sure you add this specific title name to your i3 config as a floating window by default
# In your i3 config: for_window [title="yad_powermenu"] floating enable
title="yad_powermenu"

height=1
message=""

reboot_command="reboot"
shutdown_command="shutdown -h now"
logout_command="logout"

# Change this if you want to use different icons
icons="/usr/share/icons/Papirus-Dark/16x16"

reboot_icon="$icons/devices/battery.svg"
shutdown_icon="$icons/devices/battery.svg"
logout_icon="$icons/devices/battery.svg"

yad --height="$height" --title="$title" --button="Reboot!$reboot_icon":"$reboot_command" --button="Shutdown!$shutdown_icon":"$shutdown_command" --button="Logout!$logout_icon":"$logout_command" --button=yad-cancel --escape-ok
