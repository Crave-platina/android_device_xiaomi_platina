#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Define hardware platform
PRODUCT_PLATFORM := sdm660

# Release name
PRODUCT_RELEASE_NAME := platina

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/platina/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_platina
PRODUCT_DEVICE := platina
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 Lite
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR_PRODUCT_NAME := platina
TARGET_VENDOR_DEVICE_NAME := platina
