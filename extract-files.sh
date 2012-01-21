#!/bin/sh

mkdir -p ../../../vendor/samsung/transformultra/proprietary
DIRS="
etc
etc/bluetooth
etc/firmware
etc/wifi
lib/egl
lib/hw
bin
"

for DIR in $DIRS; do
mkdir -p ../../../vendor/samsung/transformultra/proprietary/$DIR
done

FILES="
lib/libgsl.so
lib/libaudioalsa.so
lib/liblog.so
lib/libdiag.so
bin/logcat
bin/logwrapper

"


for FILE in $FILES; do
adb pull system/$FILE ../../../vendor/samsung/transformultra/proprietary/$FILE
done



(cat << EOF) | sed s/__DEVICE__/transformultra/g > ../../../vendor/samsung/transformultra/transformultra-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_COPY_FILES += \
vendor/samsung/transformultra/proprietary/lib/libgsl.so:system/lib/libgsl.so \
vendor/samsung/transformultra/proprietary/lib/libdiag.so:system/lib/libdiag.so\
#audio....
PRODUCT_COPY_FILES += \
vendor/samsung/transformultra/proprietary/lib/libaudioalsa.so:system/lib/libaudioalsa.so\
vendor/samsung/transformultra/proprietary/lib/libaudioalsa.so:obj/lib/libaudioalsa.so 
# Camera
PRODUCT_COPY_FILES += \\


# OMX
PRODUCT_COPY_FILES += \\

# HW
PRODUCT_COPY_FILES += \\

# vendor
PRODUCT_COPY_FILES += \\

# wifi
PRODUCT_COPY_FILES += \\


# bluetooth
PRODUCT_COPY_FILES += \\


# RIL specific
PRODUCT_COPY_FILES += \\

#Logcat
PRODUCT_COPY_FILES += \\
vendor/samsung/transformultra/proprietary/lib/liblog.so:system/lib/liblog.so \\
vendor/samsung/transformultra/proprietary/bin/logcat:system/bin/logcat \\
vendor/samsung/transformultra/proprietary/bin/logwrapper:system/bin/logwrapper

EOF

./setup-makefiles.sh

