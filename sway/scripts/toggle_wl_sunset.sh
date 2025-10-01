#!/bin/bash

# Check if wl-sunset is running
if pgrep -x "wlsunset" > /dev/null; then
    # If it is running, kill it
    pkill wlsunset
else
    # If it's not running, start it with your preferred settings
    wlsunset -T 6500
fi
