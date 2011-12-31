$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/transformultra/transformultra-vendor.mk)
DEVICE_PACKAGE_OVERLAYS += device/samsung/transformultra/files/overlay


#ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/transformultra/files/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
#vendor specific stuff
#PRODUCT_COPY_FILES +=\
#device/samsung/transformultra/files/init.SPH-M930.rc:root/init.SPH-M930.rc\
#device/samsung/transformultra/files/init.SPH-M930.sh:root/init.SPH-M930.sh\
#device/samsung/transformultra/files/init.SPH-M930.post_boot.sh:root/init.SPH-M930.post_boot.sh


#Let's try to get CM to autoput our mounts...
#PRODUCT_COPY_FILES += \

    #device/samsung/transformultra/files/init.rc:root/init.rc

#PRODUCT_COPY_FILES += \
#    device/samsung/transformultra/files/ueventd.rc:root/ueventd.rc

PRODUCT_COPY_FILES += \
    device/samsung/transformultra/files/lib/modules/bthid.ko:root/lib/modules/bthid.ko \
    device/samsung/transformultra/files/lib/modules/dhd.ko:root/lib/modules/dhd.ko \
    device/samsung/transformultra/files/lib/modules/qce.ko:root/lib/modules/qce.ko \
    device/samsung/transformultra/files/lib/modules/qcedev.ko:root/lib/modules/qcedev.ko 

PRODUCT_COPY_FILES += \
    device/samsung/transformultra/files/rmt_storage:system/bin/rmt_storage\
    device/samsung/transformultra/files/lib/modules/qcrypto.ko:root/lib/modules/qcrypto.ko \
    device/samsung/transformultra/files/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/samsung/transformultra/files/system/vendor/lib/libsec-ril.so:system/vendor/lib/libsec-ril.so\
    #device/samsung/transformultra/files/system/bin/rild:system/bin/rild \
    #device/samsung/transformultra/files/init.local.rc:root/system/etc/init.local.rc
        


#copy audio files...

PRODUCT_COPY_FILES +=\
device/samsung/transformultra/files/entropy.dat:data/system/entropy.dat



# Fix Logcat / Misc
PRODUCT_COPY_FILES += \
    vendor/samsung/transformultra/proprietary/lib/liblog.so:system/lib/liblog.so \
    vendor/samsung/transformultra/proprietary/bin/logcat:system/bin/logcat \
    vendor/samsung/transformultra/proprietary/bin/logwrapper:system/bin/logwrapper \
    vendor/samsung/transformultra/proprietary/lib/libgsl.so:system/lib/libgsl.so 


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES := \
wifi.interface=wlan0\
wifi.supplicant_scan_interval=15\
rild.libpath=/system/lib/libsec-ril.so\
rild.libargs='-d /dev/smd0'\
ril.subscription.types=NV
#[rild.libpath]: [/system/lib/libsec-ril.so]
#[rild.libargs]: [-d >> out/target/product/transformultra/system/build.prop;  echo /dev/smd0]
#[rild.libpath]: [/system/lib/libsec-ril.so]
#[rild.libargs]: [-d /dev/smd0]



PRODUCT_NAME := full_transformultra
PRODUCT_DEVICE := transformultra
