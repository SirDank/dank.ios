#!/bin/sh

mount -o bind /dev dev/
mount -o bind /lib lib/
mount -o bind /proc proc/
mount -o bind /run run/
mount -o bind /sys sys/
mount -o bind /usr usr/
mount -o bind /var var/