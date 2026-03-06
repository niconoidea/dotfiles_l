#!/usr/bin/env bash

out=$(wpctl get-volume @DEFAULT_SOURCE@)
if [[ $out == *MUTED* ]]; then
  echo ""
else
  echo ""
fi
