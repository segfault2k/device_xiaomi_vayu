#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ShapeShiftOS stuff.
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.corvus.maintainer=sewa2k
CORVUS_MAINTAINER := sewa2k


TARGET_FACE_UNLOCK_SUPPORTED := true
scr_resolution := 1080

PRODUCT_NAME := corvus_vayu
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
