#!/bin/sh

mkdir -p ../../../vendor/samsung/transformultra/proprietary
DIRS="
usr
usr/keylayout/
usr/keychars/
lib
lib/hw
lib/egl
lib/modules
lib/bluez-plugin
lib/plugins
lib/soundfx
cameradata
media
bin
etc
etc/bluetooth
etc/dhcpcd
etc/dhcpcd/dhcpcd-hooks
etc/firmware
etc/permissions
etc/ppp
etc/wifi
vendor
vendor/etc
vendor/lib
vendor/lib/hw
vendor/bin
usr
usr/icu
usr/share
usr/share/bmd

usr/keylayout
framework


"

for DIR in $DIRS; do
mkdir -p ../../../vendor/samsung/transformultra/proprietary/$DIR
done

FILES="


etc/init.qcom.post_boot.sh
etc/gps.conf
etc/init.cdma-pppd
etc/init.qcom.sdio.sh
etc/media_profiles.xml
etc/event-log-tags
etc/wimax_boot.bin

etc/security/otacerts.zip
etc/security/cacerts.bks
etc/BOOST_PRIVACY.html
etc/resolv.conf

etc/ppp
etc/ppp/ip-down
etc/ppp/ip-up-vpn
etc/ppp/pap-secrets
etc/ppp/options
etc/ppp/chap-secrets
etc/ppp/ip-up


etc/updatecmds
etc/updatecmds/google_generic_update.txt
etc/init.qcom.coex.sh

etc/wifi
etc/wifi/bcm4330_sta.bin
etc/wifi/wpa_supplicant.conf
etc/wifi/nvram_net.txt
etc/wifi/wl
etc/wifi/bcm4330_aps.bin
etc/wifi/bcm4330_mfg.bin
etc/wifi/nvram_mfg.txt
etc/wifi/wifi.conf
etc/dhcpcd
etc/dhcpcd/dhcpcd.conf
etc/dhcpcd/dhcpcd-run-hooks
etc/dhcpcd/dhcpcd-hooks
etc/dhcpcd/dhcpcd-hooks/95-configured
etc/dhcpcd/dhcpcd-hooks/20-dns.conf
etc/dhcpcd/dhcpcd-hooks/01-test
etc/init.gprs-pppd




etc/firmware/vidc_720p_mp4_enc_mc.fw
etc/firmware/vidc_720p_vc1_dec_mc.fw
etc/firmware/vidc_720p_command_control.fw
etc/firmware/vidc_720p_h264_enc_mc.fw
etc/firmware/vidc_720p_h264_dec_mc.fw
etc/firmware/vidc_720p_h263_dec_mc.fw
etc/firmware/vidc_720p_mp4_dec_mc.fw
etc/firmware/yamato_pfp.fw
etc/firmware/wlan
etc/firmware/wlan/qcom_fw.bin
etc/firmware/wlan/cfg.dat
etc/firmware/wlan/volans
etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini
etc/firmware/wlan/volans/WCN1314_qcom_fw.bin
etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin
etc/firmware/wlan/volans/WCN1314_cfg.dat
etc/firmware/yamato_pm4.fw

etc/init.qcom.fm.sh
etc/pvplayer.cfg
etc/01_qcomm_omx.cfg
etc/thermald.conf
etc/BOOST_PRIVACY_es.html
etc/init.qcom.wifi.sh
etc/apns-conf.xml
etc/.nomedia
etc/vold.fstab
etc/SPRINT_PRIVACY_es.html
etc/wimaxfw.bin
vendor
vendor/etc
vendor/etc/gps.xml
vendor/lib
vendor/lib/hw
vendor/lib/hw/gps.msm7k.so
vendor/lib/libsec-ril.so
vendor/bin
vendor/bin/gpsd
lib
lib/libgps.so
lib/libvoem_if.so
lib/libpng.so
lib/libqmiservices.so
lib/libtalk_jni.so
lib/librefcne.so
lib/libjnigraphics.so
lib/libgemini.so
lib/libQWiFiSoftApCfg.so
lib/libiq_client.so
lib/libcameraservice.so
lib/libOmxAacDec.so
lib/libwlbrcmp2papp.so
lib/libQmageDecoder.so
lib/libOmxVenc.so
lib/libnativehelper.so
lib/libmm-abl.so
lib/libOmxAmrDec.so
lib/libstagefright.so
lib/libdssock.so
lib/libacc.so
lib/libsurfaceflinger.so
lib/libdvm.so
lib/libOmxQcelpHwDec.so
lib/libmmosal.so
lib/libomx_amrdec_sharedlibrary.so
lib/libstagefright_enc_common.so
lib/hw
lib/hw/gps.default.so
lib/hw/sensors.SPH-M930.so
lib/hw/lights.msm7k.so
lib/hw/gralloc.msm7k.so
lib/hw/overlay.default.so
lib/hw/gralloc.default.so
lib/hw/sensors.default.so
lib/hw/sensors.SPH-M930BST.so
lib/libstagefright_avc_common.so
lib/libomx_m4vdec_sharedlibrary.so
lib/libOmxEvrcEnc.so
lib/libopencore_rtspreg.so
lib/libaudioalsa.so
lib/libsec-ril.so
lib/libwlwpscli.so
lib/libsoundpool.so
lib/libbluetoothd.so
lib/libmm-omxcore.so
lib/libandroid_runtime.so
lib/lib_Samsung_Sound_Booster.so
lib/libSR_AudioIn.so
lib/egl
lib/egl/libGLESv2_adreno200.so
lib/egl/libEGL_adreno200.so
lib/egl/libq3dtools_adreno200.so
lib/egl/libGLES_android.so
lib/egl/libGLESv1_CM_adreno200.so
lib/egl/egl.cfg
lib/libFFTEm.so
lib/libskia.so
lib/liboemcamera.so
lib/libjni_pinyinime.so
lib/libomx_aripcmdec_sharedlibrary.so
lib/libpbmlib.so
lib/libopencore_author.so
lib/libomx_wmvdec_ari_sharedlibrary.so
lib/libsystem_server.so
lib/libgstk_exp.so
lib/libcm.so
lib/libOmxEvrcDec.so
lib/libopencore_mp4localreg.so
lib/libaudio.so
lib/libsensor_yamaha_test.so
lib/libsonivox.so
lib/libsisodrm.so
lib/libopencore_downloadreg.so
lib/libbluedroid.so
lib/libdsprofile.so
lib/libthread_db.so
lib/libOpenVG.so
lib/libpvdivxdrm.so
lib/libsthmb.so
lib/libwlp2p.so
lib/libuim.so
lib/libdsutils.so
lib/libqmi.so
lib/libexpat.so
lib/libopencore_rtsp.so
lib/libaudioeffect_jni.so
lib/libopencore_mp4local.so
lib/libsecril-client.so
lib/libomx_wmadec_ari_sharedlibrary.so
lib/libRS.so
lib/libaudioeq.so
lib/libomx_mp3dec_ari_sharedlibrary.so
lib/modules
lib/modules/librasdioif.ko
lib/modules/WCN1314_rf.ko
lib/modules/libra.ko
lib/modules/WCN1314_rf_ftm.ko
lib/libttspico.so
lib/libmmparser_divxdrmlib.so
lib/libskiagl.so
lib/libquramvdecoder.so
lib/libsrec_jni.so
lib/libmmjpeg.so
lib/libloc-rpc.so
lib/libsqlite_jni.so
lib/libwmlscriptcore.so
lib/liboncrpc.so
lib/libquramimagecodec.so
lib/liboverlay.so
lib/libsamsungSoundbooster.so
lib/libpdapi.so
lib/bluez-plugin
lib/bluez-plugin/input.so
lib/bluez-plugin/audio.so
lib/libwldhcp.so
lib/libauth.so
lib/libgsdi_exp.so
lib/libOmxAmrEnc.so
lib/libttssynthproxy.so
lib/libOmxMp3Dec.so
lib/libplayready.so
lib/libOmxQcelp13Enc.so
lib/libnetmgr.so
lib/libomx_aacdec_ari_sharedlibrary.so
lib/libdss.so
lib/libfm_wan_api.so
lib/libqcomm_omx.so
lib/libjpeg.so
lib/libmmparser.so
lib/libwlwps.so
lib/libomx_divxdec_ari_sharedlibrary.so
lib/libping_mdm.so
lib/libopencore_net_support.so
lib/libdivx_jni.so
lib/libexif.so
lib/libbluetooth.so
lib/libmvs.so
lib/libdivxdrmdecrypt.so
lib/libmmipl.so
lib/libmedia_jni.so
lib/libloc_api-rpc-qc.so
lib/libiprouteutil.so
lib/liboem_rapi.so
lib/libOmxAmrRtpDec.so
lib/libstagefright_foundation.so
lib/librs_jni.so
lib/liba2dp.so
lib/libwebcore.so
lib/libstagefright_amrnb_common.so
lib/libopencorehw.so
lib/libnfc_ndef.so
lib/libqsap_sdk.so
lib/libandroid_servers.so
lib/libopencore_download.so
lib/libaudiopolicy.so
lib/libsensorservice.so
lib/libandroid.so
lib/libmediaplayerservice.so
lib/libOmxAacEnc.so
lib/libwms.so
lib/libsavscmn.so
lib/libstagefright_omx.so
lib/libstdc++.so
lib/libOmxVdec.so
lib/libdrm2_jni.so
lib/libpdsm_atl.so
lib/libmmgsdilib.so
lib/libOmxCore.so
lib/libidl.so
lib/libomadrm.so
lib/libril.so
lib/libnetutils.so
lib/libssl.so
lib/libnetlink.so
lib/libdiskconfig.so
lib/libomx_flacdec_ari_sharedlibrary.so
lib/libpixelflinger.so
lib/libOmxWmaDec.so
lib/libSwypeCore.so
lib/libdsnet.so
lib/libaudioflinger.so
lib/libcamera.so
lib/libdrm1_jni.so
lib/libqueue.so
lib/libOmxQcelp13Dec.so
lib/libsavsac.so
lib/librpc.so
lib/libstagefrighthw.so
lib/libctest.so
lib/libsysutils.so
lib/plugins
lib/plugins/com.adobe.flashplayer
lib/plugins/com.adobe.flashplayer/libflashplayer.so
lib/plugins/com.adobe.flashplayer/libysshared.so
lib/plugins/com.adobe.flashplayer/libstagefright_honeycomb.so
lib/plugins/com.adobe.flashplayer/libstagefright_froyo.so
lib/libdsm.so
lib/libiq_service.so
lib/libquramgifmovie.so
lib/libOpenSLES.so
lib/libnv.so
lib/libGLESv1_CM.so
lib/librtp_jni.so
lib/libomx_sharedlibrary.so
lib/libdivxdrm.so
lib/libOmxAdpcmDec.so
lib/libvoicesearch.so
lib/libomx_avcdec_sharedlibrary.so
lib/soundfx
lib/soundfx/libbundlewrapper.so
lib/soundfx/libvisualizer.so
lib/soundfx/libreverbwrapper.so
lib/libgsl.so
lib/libC2D2.so
lib/libsqlite.so
lib/libstagefright_color_conversion.so
lib/libOmxAmrwbDec.so
lib/libloc_ext.so
lib/libomx_ac3dec_sharedlibrary.so
lib/libdiag.so
lib/libopencore_common.so
lib/libopencore_player.so
lib/libcommondefs.so
lib/libdrm1.so
cameradata
cameradata/datapattern_420sp_384x288.yuv
cameradata/sr030pc30_420sp_384x288.yuv
cameradata/datapattern_420sp_384x288_vital2.yuv
cameradata/sr130pc10_420sp_384x288.yuv



bin/BCM4330B1_002.001.003.0221.0316.hcd

media
media/wireless_charging_5.qmg
media/wireless_charging_25.qmg
media/wireless_charging_40.qmg
media/battery_charging_90.qmg
media/battery_charging_45.qmg
media/wireless_charging_60.qmg
media/battery_charging_55.qmg
media/wireless_charging_75.qmg
media/wireless_charging_15.qmg
media/bootanimation.zip
media/battery_charging_50.qmg
media/battery_charging_65.qmg
media/battery_charging_30.qmg
media/wireless_charging_70.qmg
media/wireless_charging_100.qmg
media/wireless_charging_85.qmg
media/wireless_charging_80.qmg
media/usb_not_charging.qmg
media/battery_charging_70.qmg
media/wireless_charging_90.qmg
media/wireless_charging_65.qmg
media/battery_charging_5.qmg
media/wireless_charging_55.qmg
media/wireless_charging_20.qmg
media/wireless_charging_45.qmg
media/battery_charging_100.qmg
media/chargingwarning_auth.qmg
media/battery_charging_25.qmg
media/wireless_charging_30.qmg
media/wireless_charging_10.qmg
media/battery_charging_60.qmg
media/battery_charging_10.qmg
media/battery_charging_15.qmg
media/battery_charging_20.qmg
media/wireless_charging_50.qmg
media/wireless_charging_35.qmg
media/chargingwarning_temp.qmg
media/battery_charging_80.qmg
media/wireless_charging_95.qmg
media/battery_charging_95.qmg
media/battery_charging_40.qmg
media/battery_charging_35.qmg
media/battery_charging_85.qmg
media/battery_charging_75.qmg


usr/keylayout
usr/keylayout/Broadcom_Bluetooth_HID.kl
usr/keylayout/qwerty.kl
usr/keylayout/vital2-keypad.kl
usr/keylayout/AVRCP.kl
usr/keylayout/sec_jack.kl
usr/keylayout/pwr_key.kl
usr/keylayout/msm_tma300_ts.kl
usr/icu
usr/icu/icudt44l.dat
usr/srec
usr/srec/config
usr/srec/config/en.us
usr/srec/config/en.us/baseline.par
usr/srec/config/en.us/baseline11k.par
usr/srec/config/en.us/models
usr/srec/config/en.us/models/generic11.lda
usr/srec/config/en.us/models/generic8.lda
usr/srec/config/en.us/models/generic.swiarb
usr/srec/config/en.us/models/generic11_m.swimdl
usr/srec/config/en.us/models/generic8_m.swimdl
usr/srec/config/en.us/models/generic8_f.swimdl
usr/srec/config/en.us/models/generic11_f.swimdl
usr/srec/config/en.us/baseline8k.par
usr/srec/config/en.us/dictionary
usr/srec/config/en.us/dictionary/enroll.ok
usr/srec/config/en.us/dictionary/basic.ok
usr/srec/config/en.us/dictionary/cmu6plus.ok.zip
usr/srec/config/en.us/g2p
usr/srec/config/en.us/g2p/en-US-ttp.data
usr/srec/config/en.us/grammars
usr/srec/config/en.us/grammars/boolean.g2g
usr/srec/config/en.us/grammars/phone_type_choice.g2g
usr/srec/config/en.us/grammars/VoiceDialer.g2g
usr/share
usr/share/bmd
usr/share/bmd/RFFspeed_501.bmd
usr/share/bmd/RFFstd_501.bmd
usr/share/zoneinfo
usr/share/zoneinfo/zoneinfo.dat
usr/share/zoneinfo/zoneinfo.idx
usr/share/zoneinfo/zoneinfo.version
usr/keychars
usr/keychars/pwr_key.kcm.bin
usr/keychars/vital2-keypad.kcm.bin
usr/keychars/qwerty2.kcm.bin
usr/keychars/qwerty.kcm.bin
"




for FILE in $FILES; do
adb pull system/$FILE ../../../vendor/samsung/transformultra/proprietary/$FILE
done

./setup-makefiles.sh

