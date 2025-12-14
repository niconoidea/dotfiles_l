#!/usr/bin/env bash

if wpctl get-volume @DEFAULT_SOURCE@ | grep -q MUTED; then
  echo ""
else
  echo ""
fi
