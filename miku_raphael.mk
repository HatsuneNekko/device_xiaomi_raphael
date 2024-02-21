#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common miku stuff.
$(call inherit-product, vendor/miku/build/product/miku_product.mk)

# MIKU
MIKU_BUILD_TYPE := UNOFFICIAL
MIKU_MAINTAINER := HatsuneNeeko/NeekoOfficial
MIKU_CHIPSET := SM8150
MIKU_BATTERY := 4000mAh
MIKU_DISPLAY := 1080x2400
WITH_GMS := true
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := miku_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
