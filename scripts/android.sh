#!/bin/sh
adb -d shell sh /data/data/me.piebridge.brevent/brevent.sh
adb shell sh /sdcard/Android/data/moe.shizuku.privileged.api/files/start.sh
adb shell pm grant com.zacharee1.systemuituner android.permission.WRITE_SECURE_SETTINGS
adb shell pm grant com.zacharee1.systemuituner android.permission.PACKAGE_USAGE_STATS
adb shell pm grant com.zacharee1.systemuituner android.permission.DUMP
