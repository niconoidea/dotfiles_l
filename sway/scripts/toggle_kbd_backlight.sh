#!/bin/bash

# Path to the keyboard backlight
BACKLIGHT_PATH="/sys/class/leds/tpacpi::kbd_backlight/brightness"

# Get the current brightness level
current_brightness=$(cat $BACKLIGHT_PATH)

# Toggle the brightness between 0, 1, and 2
case $current_brightness in
    0)
        echo 1 | sudo tee $BACKLIGHT_PATH
        ;;
    1)
        echo 2 | sudo tee $BACKLIGHT_PATH
        ;;
    2)
        echo 0 | sudo tee $BACKLIGHT_PATH
        ;;
    *)
        echo 0 | sudo tee $BACKLIGHT_PATH
        ;;
esac
