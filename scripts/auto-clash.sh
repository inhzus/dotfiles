#!/usr/bin/bash

while true; do
  if ping -q -c 1 -W 1 baidu.com >/dev/null; then
    pm2 -a start clash
    break
  fi
  sleep 1
done

