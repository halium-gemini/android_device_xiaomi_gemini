#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/gemini/gemini-vendor.mk)

# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Inherit from msm8996-common
$(call inherit-product, device/xiaomi/msm8996-common/msm8996.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tasha.xml:system/etc/mixer_paths_tasha.xml

# ConfigPanel
PRODUCT_PACKAGES += \
    ConfigPanel

# Consumerir
PRODUCT_PACKAGES += \
    consumerir.msm8996

# Device init scripts
PRODUCT_PACKAGES += \
    init.target.rc
    
PRODUCT_PACKAGES += \
    libubuntu_application_api \
    libcameraservice \
    libdroidmedia \
    libmedia_compat_layer \
    libcamera_compat_layer \
    libui_compat_layer \
    libsf_compat_layer \
    libaudioflingerglue \
    libminisf \
    minisfservice \
    miniafservice \
    minimediaservice \
    camera_service \
    libcamera_shim \
    gst-droid

PRODUCT_PACKAGES += \
    charger_res_images
    
# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/atmel-maxtouch.kl:system/usr/keylayout/atmel-maxtouch.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Ubuntu Overlay Files
#
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/libs/libdataitems.so:system/lib/libdataitems.so \
    $(LOCAL_PATH)/ubuntu/libs/libdrplugin_client.so:system/lib/libdrplugin_client.so \
    $(LOCAL_PATH)/ubuntu/libs/libDRPlugin.so:system/lib/libDRPlugin.so \
    $(LOCAL_PATH)/ubuntu/libs/libevent_observer.so:system/lib/libevent_observer.so \
    $(LOCAL_PATH)/ubuntu/libs/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    $(LOCAL_PATH)/ubuntu/libs/libizat_core.so:system/lib/libizat_core.so \
    $(LOCAL_PATH)/ubuntu/libs/liblbs_core.so:system/lib/liblbs_core.so \
    $(LOCAL_PATH)/ubuntu/libs/libloc_adapter.so:system/lib/libloc_adapter.so \
    $(LOCAL_PATH)/ubuntu/libs/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \
    $(LOCAL_PATH)/ubuntu/libs/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    $(LOCAL_PATH)/ubuntu/libs/liblocationservice_glue.so:system/lib/liblocationservice_glue.so \
    $(LOCAL_PATH)/ubuntu/libs/liblocationservice.so:system/lib/liblocationservice.so \
    $(LOCAL_PATH)/ubuntu/libs/libloc_ds_api.so:system/lib/libloc_ds_api.so \
    $(LOCAL_PATH)/ubuntu/libs/liblowi_client.so:system/lib/liblowi_client.so \
    $(LOCAL_PATH)/ubuntu/libs/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    $(LOCAL_PATH)/ubuntu/libs/libulp2.so:system/lib/libulp2.so \
    $(LOCAL_PATH)/ubuntu/70-gemini.rules:system/halium/lib/udev/rules.d/70-gemini.rules \
    $(LOCAL_PATH)/ubuntu/70-gemini.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/apparmor.d/local/usr.bin.media-hub-server:system/halium/etc/apparmor.d/local/usr.bin.media-hub-server \
    $(LOCAL_PATH)/ubuntu/apparmor.d/abstractions/base:system/halium/etc/apparmor.d/abstractions/base \
    $(LOCAL_PATH)/ubuntu/ofono.override:system/halium/etc/init/ofono.override \
    $(LOCAL_PATH)/ubuntu/timekeeper.conf:system/halium/etc/init/timekeeper.conf \
    $(LOCAL_PATH)/ubuntu/hci_qcomm_init:system/bin/hci_qcomm_init \
    $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa \
    $(LOCAL_PATH)/ubuntu/gemini.conf:system/halium/etc/ubuntu-touch-session.d/gemini.conf \
    $(LOCAL_PATH)/ubuntu/gemini.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/wlan_restart.py:system/halium/usr/share/wlan_restart/wlan_restart.py \
    $(LOCAL_PATH)/ubuntu/init_hcismd_up.sh:/system/etc/init_hcismd_up.sh

# Ubuntu Property Overrides
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.t-o.quirk.forcesink=sink.primary_output \
    ro.t-o.quirk.forcesource=source.record_24_primary_input \
    ril.num_slots=2 \
    ubuntu.widi.supported=1
