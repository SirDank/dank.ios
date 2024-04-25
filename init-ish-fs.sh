#!/bin/sh

mount -o bind /dev dev/
mount -o bind /proc proc/
mount -o bind /sys sys/
mount -o bind /run run/
mount -o bind /dev/pts dev/pts/