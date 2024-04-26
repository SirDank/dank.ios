#!/bin/sh

mount -o bind /dev dev/
mount -o bind /proc/filesystems proc/filesystems
mount -o bind /lib/modules lib/modules/