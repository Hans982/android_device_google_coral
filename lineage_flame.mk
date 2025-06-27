#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
ALLOW_MISSING_DEPENDENCIES := true
TARGET_DISABLE_EPPE := true
BUILD_BROKEN_DUP_RULES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

# AxionOS-Specific Flags
AXION_MAINTAINER := Envoy_From_The_Silence
AXION_PROCESSOR := Qualcomm_Sapdragon_855+
PRODUCT_NO_CAMERA := false

# Define rear camera specs
AXION_CAMERA_REAR_INFO := 12,2MP + 16,3MP
AXION_CAMERA_FRONT_INFO := 8,1MP

# CPU
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES   := 4,5,6
AXION_CPU_PRIME_CORE  := 7
AXION_CPU_BG          := 0-1
AXION_CPU_FG          := 0-7

# Blur
TARGET_ENABLE_BLUR := false

# Gapps flags
WITH_GMS := true
WITH_GMS_VARIANT := core

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

include device/google/coral/flame/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4
PRODUCT_NAME := lineage_flame

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="flame-user 13 TP1A.221005.002.B2 9382335 release-keys" \
    BuildFingerprint=google/flame/flame:13/TP1A.221005.002.B2/9382335:user/release-keys \
    DeviceProduct=flame

$(call inherit-product, vendor/google/flame/flame-vendor.mk)
