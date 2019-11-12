#!/usr/bin/sh
# Toggle VPN

# The name of the vpn connection name
# To find this out, use `nmcli connection`
connection_name="proton_us2_tcp"

contains=`nmcli con show --active | grep $connection_name`

# Use yad to grab the password (if you don't have a password for this, comment this stuff out)
# Make sure to add an exception so that windows with this title are started in floating mode
# This is done in your i3 config by adding: "for_window [title="yad_vpnmenu"] floating enable" at the end
title="yad_vpnmenu"
text="Please enter vpn secret:"
password=`yad --title="$title" --text="$text" --entry`

# Write the password to a file (which will be deleted immediately after)
# Make sure we don't overwrite anything first
file_name="passwd_file"
if [ -e $file_name ]; then
    echo "Temporary password file \"`pwd`/$file_name\" already exists, exiting!"
    exit
fi

echo "vpn.secrets.password:$password" > passwd_file

if [ "$contains" == "" ]; then
    # VPN is currently disabled, so we want to enable it
    
    echo "Disabled"

else
    # VPN is currently enabled, so we want to disable it    

    echo "Enabled"

fi
