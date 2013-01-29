# Inherit device configuration for Kindle Fire
$(call inherit-product, device/amazon/otter2/full_otter2.mk)
$(call inherit-product, device/amazon/otter-common/cm.mk)

PRODUCT_NAME := cm_otter2
PRODUCT_DEVICE := otter2
PRODUCT_MODEL := Amazon Kindle Fire2
PRODUCT_RELEASE_NAME := KFire2
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Amazon

