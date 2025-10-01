#!/bin/bash
brightness=$(brightnessctl g)
max_brightness=$(brightnessctl m)
percent=$((brightness * 100 / max_brightness))

if [ "$percent" -lt 3 ]; then
    percent=3
fi

echo " $percent%"
