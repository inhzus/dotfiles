#!/bin/sh

cleanup () {
    echo "spotify|\n" > /tmp/i3x.status
    exit
}
trap cleanup INT TERM
dbus-send --print-reply --session --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.GetAll string:'org.mpris.MediaPlayer2.Player' | awk 'BEGIN {RS="entry"; FS="\""} /xesam:artist/ {artist=$4}; /xesam:title/ {title=$4}; /PlaybackStatus/ {sub(/Playing/, "▶"); sub(/Paused/, "⏸"); printf "spotify|%s %s %s\n", artist, $4, title; fflush(stdout)};' > /tmp/i3x.status
dbus-monitor "type=signal, path=/org/mpris/MediaPlayer2, interface=org.freedesktop.DBus.Properties, member=PropertiesChanged"| awk 'BEGIN {RS="entry"; FS="\""} /xesam:artist/ {artist=$4}; /xesam:title/ {title=$4}; /PlaybackStatus/ {sub(/Playing/, "▶"); sub(/Paused/, "⏸"); printf "spotify|%s %s %s\n", artist, $4, title; fflush(stdout)};' > /tmp/i3x.status
cleanup

