# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
# Copyright (C) 2020 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from qcom-common
include device/samsung/qcom-common/BoardConfigCommon.mk


# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
BOARD_USES_QCOM_HARDWARE := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := krait
TARGET_ARCH_VARIANT := armv7-a-neon

# Audio
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_POST_PROC := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
BOARD_USES_ALSA_AUDIO := true

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Charger
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGING_CMDLINE_NAME := "androidboot.bootchg"
BOARD_CHARGING_CMDLINE_VALUE := "true"
WITH_LINEAGE_CHARGER := false

# Dexpreopt
WITH_DEXPREOPT := true
WITH_DEXPREOPT_DEBUG_INFO := false
DONT_DEXPREOPT_PREBUILTS := true
USE_DEX2OAT_DEBUG := false

# Display
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U | 0x02000000U

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Filesystem
TARGET_FS_CONFIG_GEN := device/samsung/msm8974-common/config.fs

# Graphics
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true

# HIDL
DEVICE_MANIFEST_FILE := device/samsung/msm8974-common/manifest.xml
DEVICE_MATRIX_FILE := device/samsung/msm8974-common/compatibility_matrix.xml

# SELinux
include device/samsung/msm8974-common/sepolicy/sepolicy.mk

# Netd
TARGET_NEEDS_NETD_DIRECT_CONNECT_RULE := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Power
TARGET_USES_NON_LEGACY_POWERHAL := true
TARGET_USES_INTERACTION_BOOST := true

# Properties
TARGET_SYSTEM_PROP += device/samsung/msm8974-common/system.prop

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/msm8974-common
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_DOWNLOAD_MODE := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# inherit from the proprietary version
-include vendor/samsung/msm8974-common/BoardConfigVendor.mk
