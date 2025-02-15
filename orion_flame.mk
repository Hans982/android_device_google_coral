#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ALLOW_MISSING_DEPENDENCIES := true
TARGET_DISABLE_EPPE := true
BUILD_BROKEN_DUP_RULES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

WITH_GMS := true
TARGET_INCLUDE_NEXUS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_STOCK_AICORE := false

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

include device/google/coral/flame/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4
PRODUCT_NAME := orion_flame

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="flame-user 13 TP1A.221005.002.B2 9382335 release-keys" \
    BuildFingerprint=google/flame/flame:13/TP1A.221005.002.B2/9382335:user/release-keys \
    DeviceProduct=flame

$(call inherit-product, vendor/google/flame/flame-vendor.mk)
