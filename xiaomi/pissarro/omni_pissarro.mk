#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pissarro device
$(call inherit-product, device/xiaomi/pissarro/device.mk)

PRODUCT_DEVICE := pissarro
PRODUCT_NAME := omni_pissarro
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := pissarro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_pissarro-user 12 SP1A.210812.016 V816.0.2.0.TKTCNXM release-keys"

BUILD_FINGERPRINT := Redmi/vnd_pissarro/pissarro:12/SP1A.210812.016/V816.0.2.0.TKTCNXM:user/release-keys
