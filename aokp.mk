# Inherit device configuration for AMZ Otter
$(call inherit-product, device/amazon/otter2/full_otter2.mk)
$(call inherit-product, device/amazon/otter-common/aokp.mk)

# Setup device specific product configuration.
PRODUCT_NAME := aokp_otter2
PRODUCT_DEVICE := otter2
PRODUCT_BRAND := Android
PRODUCT_MODEL := Amazon Kindle Fire2
PRODUCT_MANUFACTURER := Amazon
PRODUCT_RELEASE_NAME := KFire2

