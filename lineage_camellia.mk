#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from camellia device
$(call inherit-product, device/xiaomi/camellia/device.mk)

PRODUCT_DEVICE := camellia
PRODUCT_NAME := lineage_camellia
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2103K19C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phoneext4_global-user 13 TP1A.220624.014 V14.0.6.0.TKSMIXM release-keys"

BUILD_FINGERPRINT := Redmi/camellia/camellia:12/SP1A.210812.016/V14.0.6.0.TKSMIXM:user/release-keys
