ifeq ($(TARGET_DEVICE),otter2)
LOCAL_PATH := $(call my-dir)

ifneq ($(TARGET_SIMULATOR),true)
include $(call first-makefiles-under,$(LOCAL_PATH))
endif
endif
