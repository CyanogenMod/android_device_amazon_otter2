TARGET_SCREEN_WIDTH := 600
TARGET_SCREEN_HEIGHT := 1024

# Inherit some common cyanogenmod stuff.
$(call inherit-product-if-exists, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for Kindle Fire
$(call inherit-product, device/amazon/otter2/full_otter2.mk)

DEVICE_PACKAGE_OVERLAYS += device/amazon/otter2/overlay/cm

PRODUCT_NAME := cm_otter2
PRODUCT_DEVICE := otter2
PRODUCT_BRAND := Android
PRODUCT_MODEL := Amazon Kindle Fire2
PRODUCT_MANUFACTURER := Amazon
PRODUCT_RELEASE_NAME := KFire2


