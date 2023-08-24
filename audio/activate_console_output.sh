#!/bin/sh
# Activate "console mode" to listen to line in audio from monitor,
# used for listening to PS5/Nintendo Switch and PC simultaneously.
# Also deactivates main screen.
xrandr --output DP-2 --off
pactl load-module module-loopback
