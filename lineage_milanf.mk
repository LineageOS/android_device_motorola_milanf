#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from milanf device
$(call inherit-product, device/motorola/milanf/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_milanf
PRODUCT_DEVICE := milanf
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g stylus 5G (2022)

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="milanf_g-user 13 T2SDS33M.75-38-1-3-26 fa7d4 release-keys" \
    BuildFingerprint=motorola/milanf_g/milanf:13/T2SDS33M.75-38-1-3-26/fa7d4:user/release-keys \
    DeviceProduct=milanf_g
