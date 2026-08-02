#!/bin/bash

x=1760
y=0

CHOICES="status\npower-saver\nbalanced\nperformance"

CHOICE=$(echo -e "$CHOICES" | wofi --dmenu -s /home/nico/.config/wofi/style_dropdown_beige.css -c ~/.config/wofi/config_dropdown_beige --x $x --y $y --width 150 --height 140 --lines=4 --sort-order=default)

case "$CHOICE" in
    status) notify-send "Current Profile" "$(powerprofilesctl get)";;
    power-saver) powerprofilesctl set power-saver;;
    balanced) powerprofilesctl set balanced ;;
    performance) powerprofilesctl set performance ;;
esac

