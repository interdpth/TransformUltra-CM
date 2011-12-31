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
etc/vold.fstab
etc/init.qcom.bt.sh
etc/apns-conf.xml
etc/wifi/wpa_supplicant.conf
etc/AudioFilter.csv
etc/AutoVolumeControl.txt
etc/firmware/yamato_pfp.fw
etc/firmware/yamato_pm4.fw
etc/init.qcom.coex.sh
etc/init.qcom.fm.sh
etc/init.qcom.post_boot.sh
etc/init.qcom.sdio.sh
etc/bluetooth/BCM4329.hcd


etc/wifi/bcm4330_aps.bin
etc/wifi/bcm4330_mfg.bin
etc/wifi/bcm4330_sta.bin
etc/wifi/nvram_mfg.txt
etc/wifi/nvram_net.txt
etc/wifi/wifi.conf
etc/wifi/wl
etc/wifi/wpa_supplicant.conf
etc/wimax_boot.bin
etc/wimaxfw.bin
etc/wimaxloader.bin

lib/libril-qc-1.so
lib/libril-qcril-hook-oem.so
lib/libgsl.so
lib/libdiag.so
lib/libcm.so
lib/liboncrpc.so
lib/libqmi.so
lib/libdsm.so
lib/libqueue.so
lib/libdll.so
lib/libmmgsdilib.so
lib/libgsdi_exp.so
lib/libgstk_exp.so
lib/libwms.so
lib/libnv.so
lib/libwmsts.so
lib/libpbmlib.so
lib/libdss.so
lib/libauth.so
lib/libcamera.so
lib/liboemcamera.so
lib/libcameraservice.so
lib/libcamera_client.so
lib/libmmjpeg.so
lib/libmmipl.so
lib/libmm-adspsvc.so
lib/libOmxAacDec.so
lib/libOmxWmvDec.so
lib/libOmxAdpcmDec.so
lib/libOmxH264Dec.so
lib/libOmxAmrDec.so
lib/libOmxAmrwbDec.so
lib/libOmxWmaDec.so
lib/libOmxMp3Dec.so
lib/libOmxMpeg4Dec.so
lib/libOmxAmrRtpDec.so
lib/libOmxAacEnc.so
lib/libOmxEvrcEnc.so
lib/libOmxAmrEnc.so
lib/libOmxQcelp13Enc.so
lib/libOmxVidEnc.so
lib/libomx_aacdec_sharedlibrary.so
lib/libomx_amrdec_sharedlibrary.so
lib/libomx_amrenc_sharedlibrary.so
lib/libomx_avcdec_sharedlibrary.so
lib/libomx_m4vdec_sharedlibrary.so
lib/libomx_mp3dec_sharedlibrary.so
lib/libomx_sharedlibrary.so
lib/libreference-ril.so
lib/libril.so
lib/liboem_rapi.so
lib/libcommondefs.so
lib/libloc_api-rpc-qc.so
lib/libmmprocess.so
lib/libhwrpc.so

bin/oem_rpc_svc
bin/vold
bin/modempre
bin/wpa_supplicant
bin/wl
bin/port-bridge
bin/brcm_patchram_plus
bin/akmd8962
bin/akmd8975
bin/compassd

bin/qmuxd
bin/rild
lib/libcm.so
lib/libdiag.so
lib/libdll.so
lib/libdsm.so
lib/libdss.so
lib/libgsdi_exp.so
lib/libgstk_exp.so
lib/libmmgsdilib.so
lib/libnv.so
lib/liboncrpc.so
lib/libpbmlib.so
lib/libqmi.so
lib/libqueue.so
lib/libril.so
lib/libril.so
lib/libril-qc-1.so
lib/libril-qcril-hook-oem.so
lib/libwms.so
lib/libwmsts.so

lib/hw/sensors.default.so
lib/hw/lights.msm7k.so
lib/hw/copybit.msm7k.so
lib/hw/gralloc.msm7k.so
lib/hw/gps.default.so

lib/egl/libEGL_adreno200.so
lib/egl/libGLESv2_adreno200.so
lib/egl/libGLESv1_CM_adreno200.so
lib/egl/libq3dtools_adreno200.so


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

PRODUCT_COPY_FILES += \\
vendor/samsung/transformultra/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
vendor/samsung/transformultra/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
vendor/samsung/transformultra/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
vendor/samsung/transformultra/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
vendor/samsung/transformultra/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
vendor/samsung/transformultra/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
vendor/samsung/transformultra/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

PRODUCT_COPY_FILES += \\
vendor/samsung/transformultra/proprietary/bin/qmuxd:system/bin/qmuxd \\
vendor/samsung/transformultra/proprietary/bin/akmd8962:system/bin/akmd8962 \\
vendor/samsung/transformultra/proprietary/bin/akmd8975:system/bin/akmd8975 \\
vendor/samsung/transformultra/proprietary/bin/compassd:system/bin/compassd \\
vendor/samsung/transformultra/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
vendor/samsung/transformultra/proprietary/lib//libcm.so:system/lib/libcm.so \\
vendor/samsung/transformultra/proprietary/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \\
vendor/samsung/transformultra/proprietary/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \\
vendor/samsung/transformultra/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \\
vendor/samsung/transformultra/proprietary/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \\
vendor/samsung/transformultra/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
vendor/samsung/transformultra/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
vendor/samsung/transformultra/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
vendor/samsung/transformultra/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
vendor/samsung/transformultra/proprietary/lib/libdll.so:system/lib/libdll.so \\
vendor/samsung/transformultra/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
vendor/samsung/transformultra/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
vendor/samsung/transformultra/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \\
vendor/samsung/transformultra/proprietary/lib/libwms.so:system/lib/libwms.so \\
vendor/samsung/transformultra/proprietary/lib/libnv.so:system/lib/libnv.so \\
vendor/samsung/transformultra/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \\
vendor/samsung/transformultra/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
vendor/samsung/transformultra/proprietary/lib/libdss.so:system/lib/libdss.so \\
vendor/samsung/transformultra/proprietary/lib/libauth.so:system/lib/libauth.so

# Camera
PRODUCT_COPY_FILES += \\
vendor/samsung/transformultra/proprietary/lib/libcamera.so:system/lib/libcamera.so \\
vendor/samsung/transformultra/proprietary/lib/libcamera.so:obj/lib/libcamera.so \\
vendor/samsung/transformultra/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
vendor/samsung/transformultra/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \\
vendor/samsung/transformultra/proprietary/lib/libcameraservice.so:system/lib/libcameraservice.so \\
vendor/samsung/transformultra/proprietary/lib/libcamera_client.so:system/lib/libcamera_client.so \\
vendor/samsung/transformultra/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
vendor/samsung/transformultra/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
vendor/samsung/transformultra/proprietary/lib/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so

# OMX
PRODUCT_COPY_FILES += \\
vendor/samsung/transformultra/proprietary/lib/libOmxWmvDec.so:/system/lib/libOmxWmvDec.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxAacDec.so:/system/lib/libOmxAacDec.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxH264Dec.so:/system/lib/libOmxH264Dec.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxMpeg4Dec.so:/system/lib/libOmxMpeg4Dec.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \\
vendor/samsung/transformultra/proprietary/lib/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \\
vendor/samsung/transformultra/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
vendor/samsung/transformultra/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
vendor/samsung/transformultra/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
vendor/samsung/transformultra/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
vendor/samsung/transformultra/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
vendor/samsung/transformultra/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
vendor/samsung/transformultra/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so

# HW
PRODUCT_COPY_FILES += \\
vendor/samsung/transformultra/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \\
vendor/samsung/transformultra/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \\
vendor/samsung/transformultra/proprietary/lib/hw/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so \\
vendor/samsung/transformultra/proprietary/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so

# vendor
PRODUCT_COPY_FILES += \\
vendor/samsung/transformultra/proprietary/bin/oem_rpc_svc:system/bin/oem_rpc_svc \\
vendor/samsung/transformultra/proprietary/bin/modempre:system/bin/modempre \\
vendor/samsung/transformultra/proprietary/lib/liboem_rapi.so:/system/lib/liboem_rapi.so \\
vendor/samsung/transformultra/proprietary/lib/libcommondefs.so:/system/lib/libcommondefs.so \\
vendor/samsung/transformultra/proprietary/lib/libloc_api-rpc-qc.so:/system/lib/libloc_api-rpc-qc.so \\
vendor/samsung/transformultra/proprietary/lib/libmmprocess.so:system/lib/libmmprocess.so\\
vendor/samsung/transformultra/proprietary/lib/libhwrpc.so:system/lib/libhwrpc.so \\
vendor/samsung/transformultra/proprietary/lib/libhwrpc.so:obj/lib/libhwrpc.so

# wifi
PRODUCT_COPY_FILES += \\
vendor/samsung/transformultra/proprietary/bin/wpa_supplicant:system/bin/wpa_supplicant \\
vendor/samsung/transformultra/proprietary/bin/wl:system/bin/wl
v
vendor/samsung/transformultra/proprietary/etc/wifi/bcm4330_aps.bin:system/etc/wifi/bcm4330_aps.bin
vendor/samsung/transformultra/proprietary/etc/wifi/bcm4330_mfg.bin:system/etc/wifi/bcm4330_mfg.bin
vendor/samsung/transformultra/proprietary/etc/wifi/bcm4330_sta.bin:system/etc/wifi/bcm4330_sta.bin
vendor/samsung/transformultra/proprietary/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt
vendor/samsung/transformultra/proprietary/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt
vendor/samsung/transformultra/proprietary/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf
vendor/samsung/transformultra/proprietary/etc/wifi/wl:system/etc/wifi/wl
vendor/samsung/transformultra/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
vendor/samsung/transformultra/proprietary/etc/wimax_boot.bin:system/etc/wimax_boot.bin:
vendor/samsung/transformultra/proprietary/etc/wimaxfw.bin:system/etc/wimaxfw.bin
vendor/samsung/transformultra/proprietary/etc/wimaxloader.bin:system/etc/wimaxloader.bin
# bluetooth
PRODUCT_COPY_FILES += \\
vendor/samsung/transformultra/proprietary/bin/port-bridge:system/bin/port-bridge \\
vendor/samsung/transformultra/proprietary/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus \\
vendor/samsung/transformultra/proprietary/etc/bluetooth/BCM4329.hcd:system/etc/bluetooth/BCM4329.hcd

# RIL specific
PRODUCT_COPY_FILES += \\
vendor/samsung/transformultra/proprietary/bin/qmuxd:system/bin/qmuxd \\
vendor/samsung/transformultra/proprietary/bin/rild:system/bin/rild \\
vendor/samsung/transformultra/proprietary/lib/libcm.so:system/lib/libcm.so \\
vendor/samsung/transformultra/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
vendor/samsung/transformultra/proprietary/lib/libdll.so:system/lib/libdll.so \\
vendor/samsung/transformultra/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
vendor/samsung/transformultra/proprietary/lib/libdss.so:system/lib/libdss.so \\
vendor/samsung/transformultra/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
vendor/samsung/transformultra/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \\
vendor/samsung/transformultra/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
vendor/samsung/transformultra/proprietary/lib/libnv.so:system/lib/libnv.so \\
vendor/samsung/transformultra/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
vendor/samsung/transformultra/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
vendor/samsung/transformultra/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
vendor/samsung/transformultra/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
vendor/samsung/transformultra/proprietary/lib/libril.so:system/lib/libril.so \\
vendor/samsung/transformultra/proprietary/lib/libril.so:obj/lib/libril.so \\
vendor/samsung/transformultra/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \\
vendor/samsung/transformultra/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
vendor/samsung/transformultra/proprietary/lib/libwms.so:system/lib/libwms.so \\
vendor/samsung/transformultra/proprietary/lib/libwmsts.so:system/lib/libwmsts.so

EOF

./setup-makefiles.sh

