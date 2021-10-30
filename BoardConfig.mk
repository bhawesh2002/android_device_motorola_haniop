#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Display density
TARGET_SCREEN_DENSITY := 395

# Inherit from sm6150-common
-include device/motorola/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/haniop

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Init
TARGET_INIT_VENDOR_LIB := libinit_haniop
TARGET_RECOVERY_DEVICE_MODULES := libinit_haniop

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

ODM_MANIFEST_SKUS += \
    haniop

ODM_MANIFEST_HANIOP_FILES := $(DEVICE_PATH)/manifest_haniop.xml

# Kernel
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
TARGET_KERNEL_CONFIG := vendor/lineage_haniop_defconfig

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618

# Verified Boot
BOARD_AVB_VBMETA_SYSTEM := system product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Inherit from the proprietary version
-include vendor/motorola/haniop/BoardConfigVendor.mk
