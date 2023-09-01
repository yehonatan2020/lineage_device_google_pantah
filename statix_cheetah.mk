#
# Copyright (C) 2022 The StatixSE Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Statix stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/statix/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/statix_common.mk)

include device/google/pantah/cheetah/device-statix.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := statix_cheetah

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230805.001 10316531 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ3A.230805.001/10316531:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
