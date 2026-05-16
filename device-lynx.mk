#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Kernel
TARGET_LINUX_KERNEL_VERSION := 6.6
TARGET_KERNEL_DEVICE := lynx
TARGET_KERNEL_DIR := device/google/$(TARGET_KERNEL_DEVICE)-kernels/$(TARGET_LINUX_KERNEL_VERSION)
TARGET_KERNEL_PLATFORM_SOURCE := google/gs-$(TARGET_LINUX_KERNEL_VERSION)

# Inherit from gs201
include device/google/gs201/common.mk

# Overlays
PRODUCT_PACKAGES += \
    DMServiceOverlayProductGs201 \
    DMServiceOverlayVendorLynx \
    FrameworkResOverlayProductLynx \
    FrameworkResOverlayVendorLynx \
    HbmSVManagerOverlayProductLynx \
    PixelNfcOverlayLynx \
    PixelWifiOverlay2023_T6proGs201 \
    PixelWifiOverlay2023_midyearLynx \
    SafetyRegulatoryInfoOverlayProductLynx \
    SettingsGoogleLynxOverlay \
    SettingsOverlayG0DZQ \
    SettingsOverlayG82U8 \
    SettingsOverlayGHL1X \
    SettingsOverlayGWKK3 \
    SystemUIGoogleOverlayVendorLynx

PRODUCT_PACKAGES += \
    ApertureOverlayLynx

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/$(DEVICE_CODENAME)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/$(DEVICE_CODENAME)/vendor.prop

# Recovery
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/init.recovery.device.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.lynx.rc

PRODUCT_PACKAGES += \
    init.recovery.lynx.touch.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    hardware/qcom/wlan \
    hardware/qcom/wlan/wcn6740

# Wi-Fi
PRODUCT_PACKAGES += \
    libwifi-hal-ctrl:64

# VINTF
DEVICE_MANIFEST_FILE += \
    $(DEVICE_PATH)/vintf/manifest.xml
DEVICE_PRODUCT_COMPATIBILITY_MATRIX_FILE += \
    $(DEVICE_PATH)/vintf/device_framework_matrix_product.xml
