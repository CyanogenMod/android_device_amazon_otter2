# Inherit device configuration for AMZ Otter
$(call inherit-product, device/amazon/otter/full_otter2.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

DEVICE_PACKAGE_OVERLAYS += device/amazon/otter/overlay/aokp

# Setup device specific product configuration.
PRODUCT_NAME := aokp_otter2
PRODUCT_DEVICE := otter2
PRODUCT_BRAND := Android
PRODUCT_MODEL := Amazon Kindle Fire2
PRODUCT_MANUFACTURER := Amazon
PRODUCT_RELEASE_NAME := KFire2

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_600_1024.zip:system/media/bootanimation.zip

