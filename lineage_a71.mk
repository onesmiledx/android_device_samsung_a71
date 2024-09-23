#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from a71 device
$(call inherit-product, device/samsung/a71/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_a71
PRODUCT_DEVICE := a71
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A715
PRODUCT_MANUFACTURER := samsung

# RisingOS flags
RISING_MAINTAINER := whystarlix
TARGET_ENABLE_BLUR := true
WITH_GMS := true
PRODUCT_NO_CAMERA := false
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_ENABLE_PIXEL_FEATURES := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Qualcomm Snapdragon 730" \
    RISING_MAINTAINER="whystarlix"

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a71naxx-user 13 TP1A.220624.014 A715FXXSBDXB1 release-keys" \
    PRODUCT_DEVICE=a71 \
    PRODUCT_NAME=a71naxx \
    TARGET_BOOTLOADER_BOARD_NAME=sm6150 \

BUILD_FINGERPRINT := "samsung/a71naxx/qssi:13/TP1A.220624.014/A715FXXSBDXB1:user/release-keys"
