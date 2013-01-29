PRODUCT_MAKEFILES := $(LOCAL_DIR)/full_otter2.mk
ifeq ($(TARGET_PRODUCT),aokp_otter2)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/aokp.mk
endif
