#!/usr/bin/env bash

BASE_DIR="$(pwd)"
SOURCEDIR="${BASE_DIR}/work"

git config --global user.email "Kousickdey3@gmail.com" && git config --global user.name "Koushik Dey"
mkdir -p "${SOURCEDIR}"
cd "${SOURCEDIR}"

git lfs install
repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --git-lfs
repo sync 

git clone https://github.com/Koushikdey2003/device_realme_RMX2020.git -b 14.0 device/realme/RMX2020
git clone https://github.com/PixelOS-Devices/vendor_realme_RMX2020.git -b fourteen vendor/realme/RMX2020 --depth=1
git clone https://github.com/PixelOS-Devices/vendor_realme_RMX2020-ims.git -b fourteen vendor/realme/RMX2020-ims
git clone https://github.com/PixelOS-Devices/kernel_realme_RMX2020.git -b fourteen kernel/realme/RMX2020 --depth=1
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git -b lineage-21 device/mediatek/sepolicy_vndr
git clone https://github.com/LineageOS/android_hardware_mediatek.git -b lineage-21 hardware/mediatek

source build/envsetup.sh

brunch RMX2020 user
