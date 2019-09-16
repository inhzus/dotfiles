#!/usr/bin/bash

while true; do
  if ping -q -c 1 -W 1 ip.gs >/dev/null; then
    echo "The network is up"
    pm2 -a start ${HOME}/go/bin/clash
    break
  fi
  sleep 1
done

