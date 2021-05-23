#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/platina/device.mk)

# Inherit some common Evo stuff.
$(call inherit-product, vendor/aosp/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
USE_GAPPS := true
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
ROHIE_MAINTAINER := Sap1k

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="platina" \
    TARGET_DEVICE="platina" \
    PRIVATE_BUILD_DESC="platina-user 10 QKQ1.190910.002 V11.0.3.0.QDTMIXM release-keys"

# Device identifier
PRODUCT_NAME := aosp_platina
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_PLATFORM := SDM660
PRODUCT_DEVICE := platina
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 8 Lite

TARGET_VENDOR_PRODUCT_NAME := platina

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
