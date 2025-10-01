#!/bin/bash
blueman-applet &
pid=$!
swaymsg "[class=Blueman-manager]" wait && kill $pid
