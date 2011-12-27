USE_CAMERA_STUB := true

# inherit from the proprietary version
#-include vendor/samsung/transformultra/BoardConfigVendor.mk
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := false
BUILD_WITH_ALSA_UTILS := false
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := transformultra

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=SPH-M930BST
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 309329920
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1055916032
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_PREBUILT_KERNEL := device/samsung/transformultra/kernel
TARGET_RECOVERY_INITRC := device/samsung/transformultra/recovery.rc
BOARD_CUSTOM_GRAPHICS :=  ../../../device/samsung/transformultra/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/transformultra/recovery/recovery_ui.c
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true



## PARTITION LAYOUT/INFO ##
BOARD_DATA_DEVICE := /dev/block/mmcblk0p17
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw,nosuid,nodev,relatime,barrier=1,data=ordered,noauto_da_alloc 0 0
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p15
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw,relatime,barrier=1,data=ordered 0 0
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p16
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTION :=rw,nosuid,nodev,relatime,barrier=1,data=ordered 0 0
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_BOOT_DEVICE := /dev/block/mmcblk0p8
BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p13
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1

# custom lun0 file for USB Mass Storage
#BOARD_UMS_LUNFILE := /sys/devices/platform/s3c-usbgadget/gadget/lun0/file
BOARD_RECOVERY_HANDLES_MOUNT := true
#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
