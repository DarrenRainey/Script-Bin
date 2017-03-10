#!/bin/bash
# This script is used to setup the build host (the machine building and running the chroot)

echo "Installing Tools"
apt-get install xorriso live-build syslinux squashfs-tools --yes

echo "Making Folders And Starting Download"
mkdir ~/livework && cd ~/livework
debootstrap --arch=amd64 wheezy chroot
