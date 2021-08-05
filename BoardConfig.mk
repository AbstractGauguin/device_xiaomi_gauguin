#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7250-common
include device/xiaomi/sm7250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/monet

BUILD_BROKEN_DUP_RULES := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_monet
TARGET_RECOVERY_DEVICE_MODULES := libinit_monet

# Fingerprint
SOONG_CONFIG_XIAOMI_LITO_FOD_POS_X = 445
SOONG_CONFIG_XIAOMI_LITO_FOD_POS_Y = 2025
SOONG_CONFIG_XIAOMI_LITO_FOD_SIZE = 190

# Kernel
TARGET_KERNEL_CONFIG := vendor/monet_user_defconfig

# Inherit from the proprietary version
include vendor/xiaomi/monet/BoardConfigVendor.mk
