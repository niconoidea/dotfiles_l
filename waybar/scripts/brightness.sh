#!/bin/bash

IFS=, read -r _ _ _ percent _ <<<"$(brightnessctl -m)"
percent=${percent%\%}   # strip trailing '%'

(( percent < 5 )) && percent=5

printf ' %s\n' "$percent"
