#!/bin/sh
# Deactivate "console mode" to listen to line in audio from monitor,
# used for listening to PS5/Nintendo Switch and PC simultaneously.
# Also re-activates main screen.
# Gnome is restarted to fix some glitches
xrandr --output DP-2 --auto
killall -3 gnome-shell
pactl unload-module module-loopback
