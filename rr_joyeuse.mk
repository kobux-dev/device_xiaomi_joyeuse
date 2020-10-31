
# Copyright (C) 2018-2019 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common RR-OS stuff
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Inherit from joyeuse device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

#Sign with private key
PRODUCT_DEFAULT_DEV_CERTIFICATE := device/xiaomi/joyeuse/keys/releasekey

# RR-OS Stuff
TARGET_FACE_UNLOCK_SUPPORT := true
RR_BUILDTYPE := Official

# RR Wallpapers (optional)
BUILD_RR_WALLPAPERS:= true

#Gapps
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080
#TARGET_GAPPS_ARCH := arm64
#TARGET_INCLUDE_WIFI_EXT := true

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := joyeuse
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := rr_joyeuse
PRODUCT_MODEL := Redmi Note 9 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

