#!/usr/bin/sh
# vpn_menu

# Bring up the possible vpn connections
# ie. any NetworkManager connection that has type = "vpn"
# "$(NF-1)" means the second to last column ($NF is the last)
# "/vpn/" means that vpn is somewhere in there
# and then print the results
raw_connections="`nmcli connection | awk '$(NF-1) ~ /vpn/ { print }'`"

# Now we have to separate out the names of the vpn connections
# The ability to have spaces in the names makes this a bit harder
