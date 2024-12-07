#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

# Bluetooth Services sysprop for A2DP AAC VBR and A2DP offloading
PRODUCT_PRODUCT_PROPERTIES += \
	persist.bluetooth.a2dp_aac.vbr_supported=true \
	ro.bluetooth.a2dp_offload.supported=true \
	persist.bluetooth.a2dp_offload.disabled=false \
	persist.bluetooth.a2dp_offload.cap=sbc-aac-aptx-aptxhd-ldac

# Bluetooth LE Audio
PRODUCT_PRODUCT_PROPERTIES += \
	ro.bluetooth.leaudio_switcher.supported=false \
	bluetooth.profile.bap.unicast.client.enabled?=false \
	bluetooth.profile.csip.set_coordinator.enabled?=false \
	bluetooth.profile.hap.client.enabled?=false \
	bluetooth.profile.mcp.server.enabled?=false \
	bluetooth.profile.ccp.server.enabled?=false \
	bluetooth.profile.vcp.controller.enabled?=false \

# Bluetooth HAL
PRODUCT_PACKAGES += \
	android.hardware.bluetooth.prebuilt.xml \
	android.hardware.bluetooth_le.prebuilt.xml
