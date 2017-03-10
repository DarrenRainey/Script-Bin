#!/bin/bash
# This script is used after  mksquashfs to create an iso file from a linux chroot

xorriso -as mkisofs -r -J -joliet-long -l -cache-inodes -isohybrid-mbr /usr/lib/syslinux/isohdpfx.bin -partition_offset 16 -A "Debian Live"  -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o remaster.iso binary
