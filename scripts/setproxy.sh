#!/bin/sh

proxy=http://127.0.0.1:7890
export http_proxy="$proxy" \
    https_proxy="$proxy" \
    ftp_proxy="$proxy" \
    rsync_proxy="$proxy" \
    HTTP_PROXY="$proxy" \
    HTTPS_PROXY="$proxy" \
    FTP_PROXY="$proxy" \
    RSYNC_PROXY="$proxy" \
    all_proxy="$proxy" \
    ALL_PROXY="$proxy"

eval $@

unset http_proxy https_proxy ftp_proxy rsync_proxy \
      HTTP_PROXY HTTPS_PROXY FTP_PROXY RSYNC_PROXY \
      all_proxy ALL_PROXY

