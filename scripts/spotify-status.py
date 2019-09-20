#!/usr/bin/python
# -*- coding: utf-8 -*-

import dbus
import time
import sys
import signal


open('/tmp/i3x.status', 'r')
fifo = open('/tmp/i3x.status', 'w')
signal.signal(signal.SIGINT, lambda: fifo.write('spotify|\n'))

try:
    spotify_properties = dbus.Interface(dbus.SessionBus().get_object("org.mpris.MediaPlayer2.spotify", "/org/mpris/MediaPlayer2"), "org.freedesktop.DBus.Properties")
    while True:
        metadata = spotify_properties.Get("org.mpris.MediaPlayer2.Player", "Metadata")
        title = str(metadata[dbus.String('xesam:title')])
        artist = str(metadata[dbus.String('xesam:artist')][0])
        s = 'spotify|{} > {}\n'.format(artist, title)
#        print(s, end='')
        fifo.write(s)
        fifo.flush()
        time.sleep(5)
except Exception:
    fifo.write('spotify|\n')
    print('exit caused by exception')

