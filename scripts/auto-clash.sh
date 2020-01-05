#!/usr/bin/bash

while true; do
  if ping -q -c 1 -W 1 ip.gs >/dev/null; then
    pm2 -a start clash
    break
  fi
  sleep 1
done

