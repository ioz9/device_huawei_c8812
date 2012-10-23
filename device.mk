# Copyright (C) 2011 The Android Open Source Project
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

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Include proprietary stuff
$(call inherit-product-if-exists, vendor/huawei/c8812/c8812-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/c8812/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/init.goldfish.rc:root/init.goldfish.rc \
	$(LOCAL_PATH)/prebuilt/init.huawei.rc:root/init.huawei.rc \
	$(LOCAL_PATH)/prebuilt/init.msm7627a.rc:root/init.msm7627a.rc \
	$(LOCAL_PATH)/prebuilt/init.msm7630.rc:root/init.msm7630.rc \
	$(LOCAL_PATH)/prebuilt/init.qcom.usb.rc:root/init.qcom.usb.rc \
	$(LOCAL_PATH)/prebuilt/init.rc:root/init.rc \
	$(LOCAL_PATH)/prebuilt/init.target.rc:root/init.target.rc \
	$(LOCAL_PATH)/prebuilt/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
	$(LOCAL_PATH)/prebuilt/ueventd.rc:root/ueventd.rc 

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/prebuilt/hostapd_default.conf:system/etc/hostapd_default.conf \
	$(LOCAL_PATH)/prebuilt/media_profiles.xml:/system/etc/media_profiles.xml \
	$(LOCAL_PATH)/prebuilt/AudioFilter.csv:/system/etc/AudioFilter.csv \
	$(LOCAL_PATH)/prebuilt/AutoVolumeControl.txt:/system/etc/AutoVolumeControl.txt 

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/prebuilt/internal_sd.fstab:system/etc/internal_sd.fstab \
	$(LOCAL_PATH)/prebuilt/external_sd.fstab:system/etc/external_sd.fstab

# Include initscripts
$(call inherit-product-if-exists, device/huawei/c8812/initscripts/initscripts.mk)

# Include keyboards
$(call inherit-product-if-exists, device/huawei/c8812/keyboards/keyboards.mk)
