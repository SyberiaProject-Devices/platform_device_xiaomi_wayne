#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit the fusion-common definitions
$(call inherit-product, device/xiaomi/sdm660-common/sdm660.mk)

# Device Path
DEVICE_PATH := device/xiaomi/wayne

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
	$(DEVICE_PATH)/overlay

# Audio
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
	$(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
	$(DEVICE_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

PRODUCT_CHARACTERISTICS := nosdcard

# Consumerir
PRODUCT_PACKAGES += \
	android.hardware.ir@1.0-impl \
	android.hardware.ir@1.0-service

# Device properties
$(call inherit-product, $(DEVICE_PATH)/device_prop.mk)

#Lawnchair
PRODUCT_PACKAGES += \
    Lawnchair

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/permissions/privapp-permissions-lawnchair.xml:system/etc/permissions/privapp-permissions-lawnchair.xml \
    $(LOCAL_PATH)/prebuilts/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:system/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

# Media
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Keylayout
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/keylayout/sdm660-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sdm660-snd-card_Button_Jack.kl

# Ramdisk
PRODUCT_PACKAGES += \
	init.device.rc

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Sensors
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Vibrator
PRODUCT_PACKAGES += \
	android.hardware.vibrator@1.0-impl \
	android.hardware.vibrator@1.0-service

# Watermark
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/media/MIUI_DualCamera_watermark_6X.png:$(TARGET_COPY_OUT_VENDOR)/etc/MIUI_DualCamera_watermark.png

# Vendor files
$(call inherit-product, vendor/xiaomi/wayne/wayne-vendor.mk)

# AOSP DEVICE
PRODUCT_NAME := aosp_wayne
PRODUCT_DEVICE := wayne
PRODUCT_MODEL := Mi 6X (AOSP)
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
