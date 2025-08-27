#!/bin/bash

rm -rf .repo/local_manifests
rm -rf device/xiaomi/mojito
rm -rf vendor/xiaomi/mojito
rm -rf kernel/xiaomi/mojito
rm -rf vendor/private/keys
echo "=================="
echo "Remove LOCAL MANIFEST success"
echo "=================="

# Rom source repo
repo init -u https://github.com/Superior13-NEXT//manifest.git -b thirteen

# Local
git clone -b superior https://github.com/OliverSyx/local_manifests.git .repo/local_manifests
echo "=================="
echo "Repo INIT success"
echo "=================="


# Sync the repositories
/opt/crave/resync.sh
echo "=================="
echo "Repo SYNC success"
echo "=================="

# Set up build environment
. build/envsetup.sh

# Lunch
lunch superior_mojito-user

# Make cleaninstall
make installclean

# Mka
mka bacon
