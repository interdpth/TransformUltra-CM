LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)


include $(CLEAR_VARS)
LOCAL_MODULE := rmt_storage
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := rmt_storage
include $(BUILD_PREBUILT)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
# include the non-open-source counterpart to this file
-include vendor/samsung/transformultra/AndroidBoardVendor.mk
