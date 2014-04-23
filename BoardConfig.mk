# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_FOLDER := device/amazon/otter2

# inherit from common
-include device/amazon/otter-common/BoardConfigCommon.mk

# Use the non-open-source parts, if they're present
-include vendor/amazon/otter2/BoardConfigVendor.mk

# Kernel
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := mem=1G console=/dev/null androidboot.selinux=permissive
TARGET_BOOTLOADER_BOARD_NAME := otter2
TARGET_OTA_ASSERT_DEVICE := blaze_tablet,otter2
TARGET_KERNEL_SOURCE := kernel/amazon/otter-common
TARGET_KERNEL_CONFIG := otter2_android_defconfig

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 929038336

# OTA Packaging / Bootimg creation
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/boot.mk

# hack the ota
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./$(DEVICE_FOLDER)/releasetools/bowser_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./$(DEVICE_FOLDER)/releasetools/bowser_img_from_target_files

# Recovery
TARGET_RECOVERY_FSTAB = $(DEVICE_FOLDER)/fstab.otter2
RECOVERY_FSTAB_VERSION = 2
TARGET_RECOVERY_INITRC := $(DEVICE_FOLDER)/init.recovery.rc
TARGET_RECOVERY_PRE_COMMAND := "/system/bin/pre-recovery.sh \#"

# TWRP Config
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_NO_REBOOT_RECOVERY := true
RECOVERY_SDCARD_ON_DATA := true
