#!/bin/bash

# this is a file to change the brightness level
# takes one argument: the percentage of increase, as whole number
# e.g. brightness.sh -5, brighness.sh 5

xbacklight -inc $1
result=$(echo $(xbacklight -get) | cut -d'.' -f1)
echo "brightness|brt:$result%" > /tmp/i3x.status
# sh $HOME/scripts/notify.sh -R $HOME/.cache/notify/brightness "Brightness Level: $result%"
