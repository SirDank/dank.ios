#!/bin/sh

mount -o bind /dev dev/
mount -o bind /proc proc/
mkdir -p lib/modules
mount -o bind /lib/modules lib/modules/