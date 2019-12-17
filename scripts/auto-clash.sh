#!/usr/bin/bash

while true; do
  if ping -q -c 1 -W 1 ip.gs >/dev/null; then
    echo "The network is up" >> $HOME/.cache/c.log 
    echo `pm2 -a start clash` >> $HOME/.cache/c.log
    break
  fi
  sleep 1
done

