#!/bin/bash

echo "POWER"
x=1760
y=0

CHOICES="Lock\nLogout\nSleep\nReboot\nShutdown"

CHOICE=$(echo -e "$CHOICES" | wofi --dmenu -s /home/nico/.config/wofi/style_dropdown_beige.css -c ~/.config/wofi/config_dropdown_beige --x $x --y $y --width 150 --height 140)

case "$CHOICE" in
    Lock) swaylock ;;
    Logout) swaymsg exit ;;
    Sleep) systemctl sleep;;
    Reboot) systemctl reboot ;;
    Shutdown) systemctl poweroff ;;
esac
