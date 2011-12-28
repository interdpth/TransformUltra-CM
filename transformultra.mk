$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/transformultra/transformultra-vendor.mk)
$(call inherit-product, hardware/msm7k/Android.mk)
DEVICE_PACKAGE_OVERLAYS += device/samsung/transformultra/overlay


#ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/transformultra/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
#Let's try to get CM to autoput our mounts...
#PRODUCT_COPY_FILES += \

    #device/samsung/transformultra/init.rc:root/init.rc

#PRODUCT_COPY_FILES += \
#    device/samsung/transformultra/ueventd.rc:root/ueventd.rc

PRODUCT_COPY_FILES += \
    device/samsung/transformultra/lib/modules/bthid.ko:root/lib/modules/bthid.ko \
    device/samsung/transformultra/lib/modules/dhd.ko:root/lib/modules/dhd.ko \
    device/samsung/transformultra/lib/modules/qce.ko:root/lib/modules/qce.ko \
    device/samsung/transformultra/lib/modules/qcedev.ko:root/lib/modules/qcedev.ko \
    device/samsung/transformultra/lib/modules/qcrypto.ko:root/lib/modules/qcrypto.ko 
    

PRODUCT_COPY_FILES +=\
device/samsung/transformultra/rmt_storage:system/bin/rmt_storage\
device/samsung/transformultra/system/etc/apns-conf.xml:system/etc/apns-conf.xml\
device/samsung/transformultra/system/bin/rild:system/bin/rild\
device/samsung/transformultra/init.local.rc:root/system/etc/init.local.rc\
device/samsung/transformultra/init.SPH-M930BST.post_boot.sh:root/init.SPH-M930BST.post_boot.sh\
device/samsung/transformultra/init.SPH-M930BST.rc:root/init.SPH-M930BST.rc\
device/samsung/transformultra/init.SPH-M930BST.sh:root/init.SPH-M930BST.sh

#copy audio files...

PRODUCT_COPY_FILES +=\
device/samsung/transformultra/logcat:system/bin/logcat\
davice/samsung/transformultra/entropy.dat:data/system/entropy.dat
device/samsung/transformultra/system/lib/libaudioflinger.so:system/lib/libaudioflinger.so\


PRODUCT_COPY_FILES := \
    vendor/samsung/transformultra/proprietary/libril.so:obj/lib/libril.so \
    vendor/samsung/transformultra/proprietary/libsecril-client.so:obj/lib/libsecril-client.so


# All the blobs necessary for galaxys devices
PRODUCT_COPY_FILES += \
    #vendor/samsung/transformultra/proprietary/libclientgps.so:system/lib/libclientgps.so \
    vendor/samsung/transformultra/proprietary/libsec-ril.so:system/lib/libsec-ril.so \
    vendor/samsung/transformultra/proprietary/libcamera.so:system/lib/libsamsungcamera.so

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_transformultra
PRODUCT_DEVICE := transformultra
