#
# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from z2_plus device
$(call inherit-product, device/zuk/z2_plus/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/sm/config/common_full_phone.mk)

PRODUCT_NAME := sm_z2_plus
PRODUCT_DEVICE := z2_plus
PRODUCT_MANUFACTURER := ZUK
PRODUCT_BRAND := ZUK
PRODUCT_MODEL := ZUK Z2131

PRODUCT_GMS_CLIENTID_BASE := android-zuk

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="z2_plus" \
    PRODUCT_NAME="z2_plus" \
    BUILD_FINGERPRINT="ZUK/z2_plus/z2_plus:7.0/NRD90M/3.1.117_171110:user/release-keys" \
    PRIVATE_BUILD_DESC="z2_plus-user 7.0 NRD90M 3.1.117_171110 release-keys"

PRODUCT_PACKAGES += \
    Launcher3

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/AMapNetworkLocation.apk:/system/priv-app/AMapNetworkLocation/AMapNetworkLocation.apk \
    $(LOCAL_PATH)/prebuilt/Substratum.apk:/system/app/Substratum/Substratum.apk \
    $(LOCAL_PATH)/prebuilt/Phonograph.apk:/system/app/Phonograph/Phonograph.apk \
    $(LOCAL_PATH)/prebuilt/via.apk:/system/app/via/via.apk \
    $(LOCAL_PATH)/prebuilt/FilesGo.apk:/system/app/FilesGo/FilesGo.apk \
    $(LOCAL_PATH)/prebuilt/zhicode.apk:/system/app/zhicode/zhicode.apk
