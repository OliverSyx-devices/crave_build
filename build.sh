#!/bin/bash

rm -rf .repo/local_manifests
rm -rf device/xiaomi/miuicamera-marble
rm -rf device/xiaomi/marble
rm -rf device/xiaomi/sm8450-common
rm -rf hardware/dolby
rm -rf hardware/xiaomi
rm -rf kernel/xiaomi/sm8450
rm -rf kernel/xiaomi/sm8450-modules
rm -rf kernel/xiaomi/sm8450-devicetrees
rm -rf vendor/xiaomi/marble
rm -rf vendor/xiaomi/sm8450-common
rm -rf vendor/private/keys
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
brunch marble userdebug
