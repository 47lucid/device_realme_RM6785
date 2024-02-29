#
# Copyright (C) 2021-2022 The ApolloOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RM6785/device.mk)

# Inherit some common Paranoid OS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit basic call recoder, Samsung Music and Gcam.
$(call inherit-product, vendor/bcr/bcr.mk)
$(call inherit-product-if-exists, vendor/gms/gms_pico.mk)
$(call inherit-product-if-exists, vendor/SamsungMusic/config.mk)


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_RM6785
PRODUCT_DEVICE := RM6785
PRODUCT_BRAND := realme
PRODUCT_MODEL := RM6785
PRODUCT_MANUFACTURER := realme
PRODUCT_GMS_CLIENTID_BASE := android-oppo

#Matrix Stuffs
MATRIXX_CHIPSET := MT6785
MATRIXX_BATTERY := 4300|5000mah
MATRIXX_DISPLAY := 1080x2400
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := Lucid_

