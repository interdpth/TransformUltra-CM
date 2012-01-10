# Inherit AOSP device configuration for generic target
$(call inherit-product, device/samsung/transformultra/transformultra.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_transformultra
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := transformultra
PRODUCT_MODEL := transformultra
PRODUCT_MANUFACTURER := Samsung

#
# Move dalvik cache to data partition where there is more room to solve startup problems
#
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.dexopt-data-only=1

# Generic modversion
ro.modversion=CyanogenMod-7
