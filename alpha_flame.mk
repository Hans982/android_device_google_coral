#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
ALLOW_MISSING_DEPENDENCIES := true
TARGET_DISABLE_EPPE := true
BUILD_BROKEN_DUP_RULES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

# Inherit some common Alphadroid stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

# Maintainer
ALPHA_MAINTAINER := Hans982
ALPHA_BUILD_TYPE := Unofficial

# Device config
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BUILD_PACKAGE := 3

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 3

# TARGET_LAUNCHER options:
# 1 - stock (default)
# 2 - lawnchair
# 3 - pixel (valid only on gapps builds)
TARGET_LAUNCHER := 1

# GAPPS (valid only for GAPPS builds)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_LAUNCHER := false
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_MATLOG := true

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

include device/google/coral/flame/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4
PRODUCT_NAME := alpha_flame

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="flame-user 13 TP1A.221005.002.B2 9382335 release-keys" \
    BuildFingerprint=google/flame/flame:13/TP1A.221005.002.B2/9382335:user/release-keys \
    DeviceProduct=flame

$(call inherit-product, vendor/google/flame/flame-vendor.mk)
