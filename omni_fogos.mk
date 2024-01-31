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

# Inherit from fogos device
$(call inherit-product, device/motorola/fogos/device.mk)

PRODUCT_DEVICE := fogos
PRODUCT_NAME := omni_fogos
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g34 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fogos_g-user 11 U1UG34.23-12-2 7a245 release-keys"

BUILD_FINGERPRINT := motorola/fogos_g/fogos:11/U1UG34.23-12-2/7a245:user/release-keys
