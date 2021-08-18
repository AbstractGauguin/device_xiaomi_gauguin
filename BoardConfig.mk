#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7250-common
include device/xiaomi/sm7250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/picasso

BUILD_BROKEN_DUP_RULES := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_picasso
TARGET_RECOVERY_DEVICE_MODULES := libinit_picasso

# Kernel
TARGET_KERNEL_CONFIG := vendor/picasso_user_defconfig

# Inherit from the proprietary version
include vendor/xiaomi/picasso/BoardConfigVendor.mk
