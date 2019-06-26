#!/bin/sh
# Pulse Audio Controls
#"notify-send "Volume Level: `amixer sset Master,0 5- unmute | awk -F'[][]' '/dB/ { print $2 }'`""


sh $HOME/scripts/notify.sh -R $HOME/.cache/notify/volume "Volume Level: `amixer sset Master,0 $1 unmute | awk -F'[][]' '/dB/ { print $2 }'`" 2>/dev/null

