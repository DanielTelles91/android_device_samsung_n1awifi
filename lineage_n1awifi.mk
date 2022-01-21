#
# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Common Android Go configurations
$(call inherit-product, build/target/product/go_defaults.mk)

# Dalvik (2 GB configuration)
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# Dexpreopt
WITH_DEXPREOPT_DEBUG_INFO := false

# The target has no boot jars to check
SKIP_BOOT_JARS_CHECK := true



# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from n1awifi device
$(call inherit-product, device/samsung/n1awifi/device.mk)

# Inherit some common lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n1awifi
PRODUCT_NAME := lineage_n1awifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-P600
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=n1awifi \
    PRIVATE_BUILD_DESC="lt03wifixx-user 5.1.1 LMY47X P600XXSDRI1 release-keys"

BUILD_FINGERPRINT := samsung/lt03wifixx/lt03wifi:5.1.1/LMY47X/P600XXSDRI1:user/release-keys
