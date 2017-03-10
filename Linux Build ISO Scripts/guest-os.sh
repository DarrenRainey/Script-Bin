#!/bin/bash
# This file is used in the chroot (Guest OS) to setup the os and unmount/exit after complete

apt-get install dialog dbus
dbus-uuidgen > /var/lib/dbus/machine-id
apt-get install linux-image-amd64 live-boot
passwd




echo "Exiting Chroot"
apt-get clean
rm /var/lib/dbus/machine-id && rm -rf /tmp/*
umount /proc /sys /dev/pts
exit
