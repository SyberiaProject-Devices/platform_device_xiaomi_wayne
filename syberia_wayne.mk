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

# Inherit device configuration
$(call inherit-product, device/xiaomi/wayne/device.mk)

# Inherit from Havoc custom product configuration
$(call inherit-product, vendor/syberia/config/common.mk)

TARGET_VENDOR_PRODUCT_NAME := wayne

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="wayne-user 9 PKQ1.180904.001 V10.3.4.0.PDCCNXM release-keys"

BUILD_FINGERPRINT="xiaomi/wayne/wayne:9/PKQ1.180904.001/V10.3.4.0.PDCCNXM:user/release-keys"

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_PLATFORM := SDM660
PRODUCT_NAME := syberia_wayne
PRODUCT_DEVICE := wayne
PRODUCT_MODEL := MI 6X

SYBERIA_BUILD_TYPE := OFFICIAL
