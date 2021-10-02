#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2021 Xioami-SDM660 Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/xiaomi/sdm660-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := platina

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Device Path
DEVICE_PATH := device/xiaomi/platina

# Display
TARGET_SCREEN_DENSITY := 420

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/wake_gesture"

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/platina
TARGET_KERNEL_CONFIG := platina_defconfig

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Platform
BOARD_VENDOR_PLATFORM := xiaomi-sdm660

# Vendor Security patch level
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# WLAN MAC
WLAN_MAC_SYMLINK := true
