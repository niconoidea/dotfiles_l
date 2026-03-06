#!/bin/bash

temp=$(
  LC_ALL=C sensors 2>/dev/null |
    awk '/Core 0:/ { gsub(/^\+/, "", $3); print $3; exit }'
)

printf ' %s\n' "${temp:-N/A}"
