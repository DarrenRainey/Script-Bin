cd ~/livework
# This script is run before iso-gen.sh to setup various files for booting with.

mkdir -p binary/live && mkdir -p binary/isolinux
cp chroot/boot/vmlinuz-3.2.0-4-amd64 binary/live/vmlinuz
cp chroot/boot/initrd.img-3.2.0-4-amd64 binary/live/initrd
mksquashfs chroot binary/live/filesystem.squashfs -comp xz -e boot
cp /usr/lib/syslinux/isolinux.bin binary/isolinux/.
cp /usr/lib/syslinux/menu.c32 binary/isolinux/
