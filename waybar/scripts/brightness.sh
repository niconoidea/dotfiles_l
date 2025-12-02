#!/bin/bash
brightness=$(brightnessctl g)
max_brightness=$(brightnessctl m)
percent=$((brightness * 100 / max_brightness))

if [ "$percent" -lt 5 ]; then
    percent=5
fi

echo " $percent%"
