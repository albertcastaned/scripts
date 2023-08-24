#!/bin/sh
# Script to 'toggle' gnome terminal between active and unactive. Should be used with a 
# custom keyboard shortcut. Also known as "Quake" terminal.

if ps aux | grep "[g]nome-terminal" > /dev/null
 then
   wid=$(xdotool getactivewindow)
   gnome_active=$(xdotool search --onlyvisible --class gnome-terminal)
    if [ $wid -eq $gnome_active ];
     then
      xdotool windowminimize $gnome_active 
    else
      xdotool windowactivate $gnome_active 
     fi
 else gnome-terminal &
fi
