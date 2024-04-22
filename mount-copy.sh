#!/bin/sh

echo "  - mounting..."
mount -t ntfs-3g /dev/sdb1 /media/usb
echo "  - copying..."
for file in *.bin
do
    cp $file /media/usb
done
echo "  - unmounting..."
umount /media/usb
echo "  - done!"
