#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_DUP_RULES := true

# Kernel
TARGET_KERNEL_DTBO_PREFIX := dts/
TARGET_KERNEL_DTBO := google/devices/lynx/dtbo.img
TARGET_KERNEL_DTB := \
    google/devices/lynx/google-base/gs201-a0.dtb \
    google/devices/lynx/google-base/gs201-b0.dtb \
    google/devices/lynx/google-base/gs201-b0_v2-ipop.dtb

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD_RAW := $(strip $(shell cat device/google/lynx/vendor_dlkm.modules.load))
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(foreach m,$(BOARD_VENDOR_KERNEL_MODULES_LOAD_RAW),$(notdir $(m)))
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW := $(strip $(shell cat device/google/lynx/vendor_kernel_boot.modules.load))
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD := $(foreach m,$(BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW),$(notdir $(m)))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD)

TARGET_KERNEL_EXT_MODULES := \
    amplifiers/audiometrics \
    amplifiers/cs35l41 \
    amplifiers/cs35l45 \
    amplifiers/cs40l26 \
    amplifiers/drv2624 \
    aoc \
    aoc/alsa \
    aoc/usb \
    bluetooth/qcom \
    bms \
    display/samsung \
    edgetpu/janeiro/drivers/edgetpu \
    gpu/mali_pixel \
    gpu/mali_kbase \
    gxp/gs201 \
    lwis \
    nfc \
    power/reset \
    touch/common \
    touch/focaltech/ft3658 \
    touch/goodix \
    uwb/kernel \
    video/gchips \
    wlan/wcn6740/cnss2 \
    wlan/wcn6740/wlan/qcacld-3.0 \
    ../devices/google/lynx/display
