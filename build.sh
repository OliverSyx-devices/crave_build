#!/bin/bash

rm -rf .repo/local_manifests
rm -rf device_xiaomi_miuicamera-marble
rm -rf device_xiaomi_marble
rm -rf device_xiaomi_sm8450-common
rm -rf hardware_dolby
rm -rf hardware_xiaomi
rm -rf kernel_xiaomi_sm8450
rm -rf kernel_xiaomi_sm8450-modules
rm -rf kernel_xiaomi_sm8450-devicetrees
rm -rf vendor_xiaomi_marble
rm -rf vendor_xiaomi_sm8450-common
rm -rf vendor_private_keys
echo "=================="
echo "Remove LOCAL MANIFEST success"
echo "=================="

# Rom source repo
repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs

# Local
git clone -b marble https://github.com/OliverSyx-devices/local_manifests.git .repo/local_manifests
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
brunch mojito user
