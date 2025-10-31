#!/bin/bash

rm -rf .repo/local_manifests
rm -rf device/xiaomi/mojito
rm -rf vendor/xiaomi/mojito
rm -rf kernel/xiaomi/mojito
rm -rf vendor/private/keys
rm -rf vendor/xiaomi/mojito-leicacamera
echo "=================="
echo "Remove LOCAL MANIFEST success"
echo "=================="

# Symlink libncurses 6 >> 5
sudo ln -s /usr/lib/x86_64-linux-gnu/libncurses.so.6 /usr/lib/x86_64-linux-gnu/libncurses.so.5
sudo ln -s /usr/lib/x86_64-linux-gnu/libtinfo.so.6   /usr/lib/x86_64-linux-gnu/libtinfo.so.5
echo "============="
echo "lib6 >> lib5  "
echo "============="

# Rom source repo
repo init -u https://github.com/RisingOS-XTI/manifest -b thirteen --git-lfs

# Local
git clone -b rising https://github.com/OliverSyx/local_manifests.git .repo/local_manifests
echo "=================="
echo "Repo INIT success"
echo "=================="


# Sync the repositories
/opt/crave/resync.sh
echo "=================="
echo "Repo SYNC success"
echo "=================="

# Leica
git clone --depth=1 https://gitlab.com/pnplusplus/android_vendor_xiaomi_mojito-leicacamera vendor/xiaomi/mojito-leicacamera
echo "============================"
echo "Clone LEICA success"
echo "============================"

# Set up build environment
. build/envsetup.sh

# Lunch
brunch mojito user
