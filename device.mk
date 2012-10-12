$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/c8812/c8812-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/c8812/overlay
PRODUCT_LOCALES += hdpi

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore
    
# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7x27 \
    copybit.msm7x27 \
    hwcomposer.msm7x27 \
    libtilerenderer \
    libQcomUI

# Audio
PRODUCT_PACKAGES += \
    audio.primary.c8812 \
    audio_policy.c8812 \
    audio.a2dp.default \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    lights.c8812 \
    gps.c8812
#   Torch

# Camera
PRODUCT_PACKAGES += \
   camera.msm7x27

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml

PRODUCT_COPY_FILES += \
    device/huawei/c8812/prebuilt/init.huawei.rc:root/init.huawei.rc \
    device/huawei/c8812/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/c8812/prebuilt/init.qcom.sh:root/init.qcom.sh \
    device/huawei/c8812/prebuilt/init.huawei.usb.rc:root/init.huawei.usb.rc

PRODUCT_COPY_FILES += \
    device/huawei/c8812/prebuilt/system/wifi/dhd_4330.ko:system/wifi/dhd_4330.ko \
    device/huawei/c8812/prebuilt/system/wifi/fw_4330_b2.bin:system/wifi/fw_4330_b2.bin \
    device/huawei/c8812/prebuilt/system/wifi/nvram_4330.txt:system/wifi/nvram_4330.txt \
    device/huawei/c8812/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/huawei/c8812/prebuilt/system/etc/bluetooth/BCM4330.hcd:system/etc/bluetooth/BCM4330.hcd \
    device/huawei/c8812/prebuilt/system/etc/bluetooth/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh \
    device/huawei/c8812/prebuilt/system/etc/bluetooth/init.bcm.chip_off.sh:system/etc/bluetooth/init.bcm.chip_off.sh \
    device/huawei/c8812/prebuilt/system/etc/bluetooth/init.bcm.chip_on.sh:system/etc/bluetooth/init.bcm.chip_on.sh \
    device/huawei/c8812/prebuilt/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf

PRODUCT_COPY_FILES += \
    device/huawei/c8812/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/c8812/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/c8812/prebuilt/system/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    device/huawei/c8812/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/huawei/c8812/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/huawei/c8812/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/c8812/mediaprofiles/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/c8812/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

PRODUCT_COPY_FILES += \
    device/huawei/c8812/prebuilt/system/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/c8812/prebuilt/system/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/c8812/prebuilt/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/c8812/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/c8812/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/c8812/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/c8812/prebuilt/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/huawei/c8812/prebuilt/system/bin/vold:system/bin/vold \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := huawei_c8812
PRODUCT_DEVICE := c8812
PRODUCT_BRAND := huawei
