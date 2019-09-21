#!/bin/sh
# Pulse Audio Controls
#"notify-send "Volume Level: `amixer sset Master,0 5- unmute | awk -F'[][]' '/dB/ { print $2 }'`""

vol=`amixer sset Master,0 $1 unmute | awk -F'[][]' '/\[on\]/ {print $2; exit}'`
echo "volume|vol:$vol" > /tmp/i3x.status
#sh $HOME/scripts/notify.sh -R $HOME/.cache/notify/volume "Volume Level: $vol" 2>/dev/null

