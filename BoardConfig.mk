#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Display density
TARGET_SCREEN_DENSITY := 400

#Path to device
DEVICE_PATH := device/motorola/hanoip

# Platform
TARGET_BOARD_PLATFORM := sm7150
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618
TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_64_BIT_APPS := true
BUILD_BROKEN_DUP_RULES := true
QCOM_BOARD_PLATFORMS += sm7150


# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=1 androidboot.usbcontroller=a600000.dwc3 earlycon=msm_geni_serial,0x880000 loop.max_part=7 printk.devkmsg=on androidboot.hab.csv=5 androidboot.hab.product=hanoip androidboot.hab.cid=50 firmware_class.path=/vendor/firmware_mnt/image buildvariant=user
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/motorola/hanoip
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := r416183c1
TARGET_KERNEL_ADDITIONAL_FLAGS := LLVM=1

# Kernel modules - Audio
TARGET_MODULE_ALIASES += \
 adsp_loader_dlkm.ko:audio_adsp_loader.ko \
 apr_dlkm.ko:audio_apr.ko \
 bolero_cdc_dlkm.ko:audio_bolero_cdc.ko \
 hdmi_dlkm.ko:audio_hdmi.ko \
 machine_talos_dlkm.ko:audio_machine_talos.ko \
 mbhc_dlkm.ko:audio_mbhc.ko \
 native_dlkm.ko:audio_native.ko \
 pinctrl_lpi_dlkm.ko:audio_pinctrl_lpi.ko \
 pinctrl_wcd_dlkm.ko:audio_pinctrl_wcd.ko \
 platform_dlkm.ko:audio_platform.ko \
 q6_dlkm.ko:audio_q6.ko \
 q6_notifier_dlkm.ko:audio_q6_notifier.ko \
 q6_pdr_dlkm.ko:audio_q6_pdr.ko \
 rx_macro_dlkm.ko:audio_rx_macro.ko \
 snd_event_dlkm.ko:audio_snd_event.ko \
 stub_dlkm.ko:audio_stub.ko \
 swr-dlkm.ko:audio_swr.ko \
 swr_ctrl_dlkm.ko:audio_swr_ctrl.ko \
 tx_macro_dlkm.ko:audio_tx_macro.ko \
 usf_dlkm.ko:audio_usf.ko \
 va_macro_dlkm.ko:audio_va_macro.ko \
 wcd9xxx_dlkm.ko:audio_wcd9xxx.ko \
 wcd934x-dlkm.ko:audio_wcd934x.ko \
 wcd937x_dlkm.ko:audio_wcd937x.ko \
 wcd937x_slave-dlkm.ko:audio_wcd937x_slave.ko \
 wcd_core_dlkm.ko:audio_wcd_core.ko \
 wcd_spi_dlkm.ko:audio_wcd_spi.ko \
 wglink_dlkm.ko:audio_wglink.ko \
 wsa881x_dlkm.ko:audio_wsa881x.ko \
 wsa_macro_dlkm.ko:audio_wsa_macro.ko \

# Kernel modules - WLAN
TARGET_MODULE_ALIASES += \
    wlan.ko:qca_cld3_wlan.ko

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Audio
AUDIO_FEATURE_ENABLED_A2DP_OFFLOAD := true
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_AHAL_EXT := false
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_INSTANCE_ID := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(VENDOR_PATH)/bluetooth/include
TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true
TARGET_USE_QTI_BT_STACK := true

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# CNE and DPM
BOARD_USES_QCNE := true

# Dex
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    WITH_DEXPREOPT ?= true
  endif
endif

# Display
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
TARGET_USES_GRALLOC4 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
TARGET_FS_CONFIG_GEN := \
    $(VENDOR_PATH)/config.fs \
    $(VENDOR_PATH)/mot_aids.fs

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
GNSS_HIDL_VERSION := 2.1
LOC_HIDL_VERSION := 4.0
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(VENDOR_PATH)/framework_compatibility_matrix.xml
DEVICE_MATRIX_FILE := $(VENDOR_PATH)/compatibility_matrix.xml
DEVICE_MANIFEST_FILE := $(VENDOR_PATH)/manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(VENDOR_PATH):libinit_sm6150
TARGET_RECOVERY_DEVICE_MODULES := libinit_sm6150

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 30720000
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 30720000
BOARD_MOTOROLA_DYNAMIC_PARTITIONS_PARTITION_LIST := product system system_ext vendor
BOARD_MOTOROLA_DYNAMIC_PARTITIONS_SIZE := 5398069248
BOARD_SUPER_PARTITION_GROUPS := motorola_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 10804527104
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Power
TARGET_USES_INTERACTION_BOOST := true
TARGET_RPM_MASTER_STAT := "/d/rpmh/master_stats"
TARGET_RPM_STAT := "/d/rpmh/stats"
TARGET_TAP_TO_WAKE_NODE := "/sys/class/sensors/dt-gesture/enable"
TARGET_WLAN_POWER_STAT := "/sys/kernel/wlan/power_stats"

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/fstab.qcom

# RIL
ENABLE_VENDOR_RIL_SERVICE := true
TARGET_RIL_VARIANT := caf

# Security patch level
VENDOR_SECURITY_PATCH := 2099-12-31

# SELinux
include device/qcom/sepolicy_vndr/SEPolicy.mk
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/private
BOARD_VENDOR_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy/vendor
