#
# Copyright (C) 2015-2017 The Android Open-Source Project
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
#

DEVICE_PATH := device/infinix/X557

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic

# Assert
TARGET_OTA_ASSERT_DEVICE := X557

# Board
TARGET_BOARD_PLATFORM := mt6580
TARGET_BOOTLOADER_BOARD_NAME := CY-X557-H807
TARGET_NO_BOOTLOADER := true

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RAMDISK_OFFSET := 0x04000000
BOARD_KERNEL_TAGS_OFFSET := 0x0e000000

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
RECOVERY_SDCARD_ON_DATA := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/twrp.fstab

# TWRP specific flags
TW_THEME := portrait_hdpi
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SCREEN_BLANK_ON_BOOT := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 255

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Some flags to get smaller recovery.img
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
#TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_BASH := true
TW_EXCLUDE_NANO := true
