#!/bin/sh
# Pulse Audio Controls
#"notify-send "Volume Level: `amixer sset Master,0 5- unmute | awk -F'[][]' '/dB/ { print $2 }'`""

case $1 in
    raise)
    sh $HOME/scripts/notify.sh -R $HOME/.cache/volume.notify "Volume Level: `amixer sset Master,0 5+ unmute | awk -F'[][]' '/dB/ { print $2 }'`" 2>/dev/null
    ;;
    lower)
    sh $HOME/scripts/notify.sh -R $HOME/.cache/volume.notify "Volume Level: `amixer sset Master,0 5- unmute | awk -F'[][]' '/dB/ { print $2 }'`" 2>/dev/null
    ;;
    toggle)
    sh $HOME/scripts/notify.sh -R $HOME/.cache/volume.notify "Volume: `amixer sset Master,0 0% unmute | awk '/dB/ { print $2 }'`" 2>/dev/null
esac


