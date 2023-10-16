# Copyright (C) 2023 The ArrowOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Device identifier
PRODUCT_NAME := arrow_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 NFC
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "POCO/surya_global/surya:12/SKQ1.211019.001/V14.0.1.0.SJGMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=surya_global

PRIVATE_BUILD_DESC="surya_global-user 12 SKQ1.211019.001 V14.0.1.0.SJGMIXM release-keys" \

# ArrowOS additions
TARGET_BOOT_ANIMATION_RES := 1080
DEVICE_MAINTAINER := Vesguin
ARROW_GAPPS := true
