PRODUCT_COPY_FILES += \
    vendor/xiaomi/virgo/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    vendor/xiaomi/virgo/proprietary/lib/hw/camera.msm8974.so:system/lib/hw/camera.vendor.msm8974.so \
    vendor/xiaomi/virgo/proprietary/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    vendor/xiaomi/virgo/proprietary/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    vendor/xiaomi/virgo/proprietary/lib/libqomx_core.so:system/lib/libqomx_core.so \
    vendor/xiaomi/virgo/proprietary/lib/libRecoFace.so:system/lib/libRecoFace.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libarcsoft_beauty_shot.so:system/vendor/lib/libarcsoft_beauty_shot.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libchromaflash.so:system/vendor/lib/libchromaflash.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libFaceProc.so:system/vendor/lib/libFaceProc.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libjpegdhw.so:system/vendor/lib/libjpegdhw.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libjpegehw.so:system/vendor/lib/libjpegehw.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libmmipl.so:system/vendor/lib/libmmipl.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libmmjpeg.so:system/vendor/lib/libmmjpeg.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libmmqjpeg_codec.so:system/vendor/lib/libmmqjpeg_codec.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/liboemcamera.so:system/vendor/lib/liboemcamera.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqomx_jpegdec.so:system/vendor/lib/libqomx_jpegdec.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqomx_jpegenc.so:system/vendor/lib/libqomx_jpegenc.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libt2tmanager.so:system/vendor/lib/libt2tmanager.so \
    vendor/xiaomi/virgo/proprietary/lib/libchromatix_imx135_liveshot.so:system/lib/libchromatix_imx135_liveshot.so \
    vendor/xiaomi/virgo/proprietary/lib/libchromatix_imx214_liveshot.so:system/lib/libchromatix_imx214_liveshot.so \
    vendor/xiaomi/virgo/proprietary/lib/libchromatix_imx215_liveshot.so:system/lib/libchromatix_imx215_liveshot.so \
    vendor/xiaomi/virgo/proprietary/lib/libchromatix_imx219_liveshot.so:system/lib/libchromatix_imx219_liveshot.so \
    vendor/xiaomi/virgo/proprietary/lib/libchromatix_imx224_liveshot.so:system/lib/libchromatix_imx224_liveshot.so \
    vendor/xiaomi/virgo/proprietary/lib/libchromatix_imx225_liveshot.so:system/lib/libchromatix_imx225_liveshot.so \
    vendor/xiaomi/virgo/proprietary/lib/libchromatix_imx226_liveshot.so:system/lib/libchromatix_imx226_liveshot.so \
    vendor/xiaomi/virgo/proprietary/lib/libchromatix_s5k3m2_liveshot.so:system/lib/libchromatix_s5k3m2_liveshot.so \
    vendor/xiaomi/virgo/proprietary/etc/firmware/cpp_firmware_v1_1_1.fw:system/etc/firmware/cpp_firmware_v1_1_1.fw \
    vendor/xiaomi/virgo/proprietary/etc/firmware/cpp_firmware_v1_1_6.fw:system/etc/firmware/cpp_firmware_v1_1_6.fw \
    vendor/xiaomi/virgo/proprietary/etc/firmware/cpp_firmware_v1_2_0.fw:system/etc/firmware/cpp_firmware_v1_2_0.fw

# Chromatix
chromatix_files := $(shell ls vendor/xiaomi/virgo/proprietary/vendor/lib/libchromatix*)
PRODUCT_COPY_FILES += $(foreach file, $(chromatix_files), \
        $(file):system/vendor/lib/$(shell basename $(file)))

# mmcamera
libmmcamera_files := $(shell ls vendor/xiaomi/virgo/proprietary/vendor/lib/libmmcamera*)
PRODUCT_COPY_FILES += $(foreach file, $(libmmcamera_files), \
        $(file):system/vendor/lib/$(shell basename $(file)))

# mmcamera2
libmmcamera2_files := $(shell ls vendor/xiaomi/virgo/proprietary/vendor/lib/libmmcamera2*)
PRODUCT_COPY_FILES += $(foreach file, $(libmmcamera2_files), \
        $(file):system/vendor/lib/$(shell basename $(file)))

# actuator
libactuator_files := $(shell ls vendor/xiaomi/virgo/proprietary/vendor/lib/libactuator*)
PRODUCT_COPY_FILES += $(foreach file, $(libactuator_files), \
        $(file):system/vendor/lib/$(shell basename $(file)))

PRODUCT_COPY_FILES += \
    vendor/xiaomi/virgo/proprietary/vendor/bin/thermal-engine:system/vendor/bin/thermal-engine \
    vendor/xiaomi/virgo/proprietary/vendor/firmware/keymaster/keymaster.b00:system/vendor/firmware/keymaster/keymaster.b00 \
    vendor/xiaomi/virgo/proprietary/vendor/firmware/keymaster/keymaster.b01:system/vendor/firmware/keymaster/keymaster.b01 \
    vendor/xiaomi/virgo/proprietary/vendor/firmware/keymaster/keymaster.b02:system/vendor/firmware/keymaster/keymaster.b02 \
    vendor/xiaomi/virgo/proprietary/vendor/firmware/keymaster/keymaster.b03:system/vendor/firmware/keymaster/keymaster.b03 \
    vendor/xiaomi/virgo/proprietary/vendor/firmware/keymaster/keymaster.mdt:system/vendor/firmware/keymaster/keymaster.mdt \
    vendor/xiaomi/virgo/proprietary/vendor/firmware/bcm2079x-b5_firmware.ncd:system/vendor/firmware/bcm2079x-b5_firmware.ncd \
    vendor/xiaomi/virgo/proprietary/vendor/firmware/bcm2079x-b5_pre_firmware.ncd:system/vendor/firmware/bcm2079x-b5_pre_firmware.ncd \
    vendor/xiaomi/virgo/proprietary/bin/mpdecision:system/bin/mpdecision \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqti-perfd-client.so:system/vendor/lib/libqti-perfd-client.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libdisp-aba.so:system/vendor/lib/libdisp-aba.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libmm-abl.so:system/vendor/lib/libmm-abl.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libmm-abl-oem.so:system/vendor/lib/libmm-abl-oem.so \
    vendor/xiaomi/virgo/proprietary/bin/btnvtool:system/bin/btnvtool \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libbtnv.so:system/vendor/lib/libbtnv.so \
    vendor/xiaomi/virgo/proprietary/bin/time_daemon:system/bin/time_daemon \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libTimeService.so:system/vendor/lib/libTimeService.so \
    vendor/xiaomi/virgo/proprietary/bin/adsprpcd:system/bin/adsprpcd \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libadsprpc.so:system/vendor/lib/libadsprpc.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libfastcvadsp_stub.so:system/vendor/lib/libfastcvadsp_stub.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libfastcvopt.so:system/vendor/lib/libfastcvopt.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libscve.so:system/vendor/lib/libscve.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libscve_stub.so:system/vendor/lib/libscve_stub.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libacdbloader.so:system/vendor/lib/libacdbloader.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libacdbrtac.so:system/vendor/lib/libacdbrtac.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libacdbmapper.so:system/vendor/lib/libacdbmapper.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libadiertac.so:system/vendor/lib/libadiertac.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libaudcal.so:system/vendor/lib/libaudcal.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libaudioalsa.so:system/vendor/lib/libaudioalsa.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/soundfx/libqcbassboost.so:system/vendor/lib/soundfx/libqcbassboost.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/soundfx/libqcreverb.so:system/vendor/lib/soundfx/libqcreverb.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/soundfx/libqcvirt.so:system/vendor/lib/soundfx/libqcvirt.so \
    vendor/xiaomi/virgo/proprietary/lib/soundfx/libdirac.so:system/vendor/lib/soundfx/libdirac.so \
    vendor/xiaomi/virgo/proprietary/lib/libDiracAPI_SHARED.so:system/vendor/lib/libDiracAPI_SHARED.so \
    vendor/xiaomi/virgo/proprietary/bin/quipc_main:system/bin/quipc_main \
    vendor/xiaomi/virgo/proprietary/bin/quipc_igsn:system/bin/quipc_igsn \
    vendor/xiaomi/virgo/proprietary/vendor/lib/hw/flp.default.so:system/vendor/lib/hw/flp.default.so \
    vendor/xiaomi/virgo/proprietary/lib/hw/activity_recognition.msm8974.so:system/lib/hw/activity_recognition.msm8974.so \
    vendor/xiaomi/virgo/proprietary/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    vendor/xiaomi/virgo/proprietary/lib/libloc_ds_api.so:system/lib/libloc_ds_api.so \
    vendor/xiaomi/virgo/proprietary/lib/libgps.utils.so:system/lib/libgps.utils.so \
    vendor/xiaomi/virgo/proprietary/lib/libloc_core.so:system/lib/libloc_core.so \
    vendor/xiaomi/virgo/proprietary/lib/libloc_eng.so:system/lib/libloc_eng.so \
    vendor/xiaomi/virgo/proprietary/lib/hw/gps.msm8974.so:system/lib/hw/gps.msm8974.so \
    vendor/xiaomi/virgo/proprietary/lib/modules/wlan.ko:system/lib/modules/wlan.ko \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libgeofence.so:system/vendor/lib/libgeofence.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libizat_core.so:system/vendor/lib/libizat_core.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/liblbs_core.so:system/vendor/lib/liblbs_core.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/liblocationservice.so:system/vendor/lib/liblocationservice.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libquipc_os_api.so:system/vendor/lib/libquipc_os_api.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libquipc_ulp_adapter.so:system/vendor/lib/libquipc_ulp_adapter.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libulp2.so:system/vendor/lib/libulp2.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libbccQTI.so:system/vendor/lib/libbccQTI.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libc2d30.so:system/vendor/lib/libc2d30.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libscale.so:system/vendor/lib/libscale.so \
    vendor/xiaomi/virgo/proprietary/etc/firmware/a330_pfp.fw:system/etc/firmware/a330_pfp.fw \
    vendor/xiaomi/virgo/proprietary/etc/firmware/a330_pm4.fw:system/etc/firmware/a330_pm4.fw \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libI420colorconvert.so:system/vendor/lib/libI420colorconvert.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libmmosal.so:system/vendor/lib/libmmosal.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libmm-color-convertor.so:system/vendor/lib/libmm-color-convertor.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libDivxDrm.so:system/vendor/lib/libDivxDrm.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libSHIMDivxDrm.so:system/vendor/lib/libSHIMDivxDrm.so \
    vendor/xiaomi/virgo/proprietary/bin/irsc_util:system/bin/irsc_util \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libdiag.so:system/vendor/lib/libdiag.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libconfigdb.so:system/vendor/lib/libconfigdb.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libperipheral_client.so:system/vendor/lib/libperipheral_client.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libdsi_netctrl.so:system/vendor/lib/libdsi_netctrl.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libdsutils.so:system/vendor/lib/libdsutils.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libidl.so:system/vendor/lib/libidl.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqcci_legacy.so:system/vendor/lib/libqcci_legacy.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqdi.so:system/vendor/lib/libqdi.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqdp.so:system/vendor/lib/libqdp.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqmi.so:system/vendor/lib/libqmi.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqmi_cci.so:system/vendor/lib/libqmi_cci.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqmi_client_qmux.so:system/vendor/lib/libqmi_client_qmux.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqmi_common_so.so:system/vendor/lib/libqmi_common_so.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqmi_csi.so:system/vendor/lib/libqmi_csi.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqmi_csvt_srvc.so:system/vendor/lib/libqmi_csvt_srvc.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqmi_encdec.so:system/vendor/lib/libqmi_encdec.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libqmiservices.so:system/vendor/lib/libqmiservices.so \
    vendor/xiaomi/virgo/proprietary/bin/netmgrd:system/bin/netmgrd \
    vendor/xiaomi/virgo/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/xiaomi/virgo/proprietary/bin/radish:system/bin/radish \
    vendor/xiaomi/virgo/proprietary/bin/rfs_access:system/bin/rfs_access \
    vendor/xiaomi/virgo/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    vendor/xiaomi/virgo/proprietary/etc/permissions/qcnvitems.xml:system/etc/permissions/qcnvitems.xml \
    vendor/xiaomi/virgo/proprietary/etc/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
    vendor/xiaomi/virgo/proprietary/framework/qcnvitems.jar:system/framework/qcnvitems.jar \
    vendor/xiaomi/virgo/proprietary/framework/qcrilhook.jar:system/framework/qcrilhook.jar \
    vendor/xiaomi/virgo/proprietary/framework/qti-telephony-common.jar:system/framework/qti-telephony-common.jar \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libasn1cper.so:system/vendor/lib/libasn1cper.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libasn1crt.so:system/vendor/lib/libasn1crt.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libasn1crtx.so:system/vendor/lib/libasn1crtx.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libcneapiclient.so:system/vendor/lib/libcneapiclient.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libnetmgr.so:system/vendor/lib/libnetmgr.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libril-qc-qmi-1.so:system/vendor/lib/libril-qc-qmi-1.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libril-qcril-hook-oem.so:system/vendor/lib/libril-qcril-hook-oem.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libsmemlog.so:system/vendor/lib/libsmemlog.so \
    vendor/xiaomi/virgo/proprietary/bin/sensors.qcom:system/bin/sensors.qcom \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libAKM8963.so:system/vendor/lib/libAKM8963.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/hw/sensors.msm8974.so:system/vendor/lib/hw/sensors.msm8974.so \
    vendor/xiaomi/virgo/proprietary/lib/hw/consumerir.msm8974.so:system/lib/hw/consumerir.msm8974.so \
    vendor/xiaomi/virgo/proprietary/etc/permissions/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libsensor1.so:system/vendor/lib/libsensor1.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libsensor_reg.so:system/vendor/lib/libsensor_reg.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libsensor_test.so:system/vendor/lib/libsensor_test.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libsensor_user_cal.so:system/vendor/lib/libsensor_user_cal.so \
    vendor/xiaomi/virgo/proprietary/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    vendor/xiaomi/virgo/proprietary/etc/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf \
    vendor/xiaomi/virgo/proprietary/etc/thermal-engine-perf.conf:system/etc/thermal-engine-perf.conf \
    vendor/xiaomi/virgo/proprietary/bin/hvdcp:system/bin/hvdcp \
    vendor/xiaomi/virgo/proprietary/bin/charger_monitor:system/bin/charger_monitor \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libmm-hdcpmgr.so:system/vendor/lib/libmm-hdcpmgr.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libmmQSM.so:system/vendor/lib/libmmQSM.so \
    vendor/xiaomi/virgo/proprietary/etc/firmware/venus.b00:system/etc/firmware/venus.b00 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/venus.b01:system/etc/firmware/venus.b01 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/venus.b02:system/etc/firmware/venus.b02 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/venus.b03:system/etc/firmware/venus.b03 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/venus.b04:system/etc/firmware/venus.b04 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/venus.mbn:system/etc/firmware/venus.mbn \
    vendor/xiaomi/virgo/proprietary/etc/firmware/venus.mdt:system/etc/firmware/venus.mdt \
    vendor/xiaomi/virgo/proprietary/etc/firmware/wcnss.b00:system/etc/firmware/wcnss.b00 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/wcnss.b01:system/etc/firmware/wcnss.b01 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/wcnss.b02:system/etc/firmware/wcnss.b02 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/wcnss.b04:system/etc/firmware/wcnss.b04 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/wcnss.b06:system/etc/firmware/wcnss.b06 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/wcnss.b07:system/etc/firmware/wcnss.b07 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/wcnss.b08:system/etc/firmware/wcnss.b08 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/wcnss.b09:system/etc/firmware/wcnss.b09 \
    vendor/xiaomi/virgo/proprietary/etc/firmware/wcnss.mdt:system/etc/firmware/wcnss.mdt \
    vendor/xiaomi/virgo/proprietary/bin/qseecomd:system/bin/qseecomd \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libNimsWrap.so:system/vendor/lib/libNimsWrap.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libuiblur.so:system/vendor/lib/libuiblur.so \
    vendor/xiaomi/virgo/proprietary/lib/libdrmdiag.so:system/lib/libdrmdiag.so \
    vendor/xiaomi/virgo/proprietary/lib/libdrmfs.so:system/lib/libdrmfs.so \
    vendor/xiaomi/virgo/proprietary/lib/libdrmtime.so:system/lib/libdrmtime.so \
    vendor/xiaomi/virgo/proprietary/lib/libQSEEComAPI.so:system/lib/libQSEEComAPI.so \
    vendor/xiaomi/virgo/proprietary/lib/librpmb.so:system/lib/librpmb.so \
    vendor/xiaomi/virgo/proprietary/lib/libthermalclient.so:system/lib/libthermalclient.so \
    vendor/xiaomi/virgo/proprietary/lib/libthermalioctl.so:system/lib/libthermalioctl.so \
    vendor/xiaomi/virgo/proprietary/lib/libssd.so:system/lib/libssd.so \
    vendor/xiaomi/virgo/proprietary/lib/drm/libdrmwvmplugin.so:system/lib/drm/libdrmwvmplugin.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libdrmdecrypt.so:system/vendor/lib/libdrmdecrypt.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/liboemcrypto.so:system/vendor/lib/liboemcrypto.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libWVphoneAPI.so:system/vendor/lib/libWVphoneAPI.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/mediadrm/libdrmclearkeyplugin.so:system/vendor/lib/mediadrm/libdrmclearkeyplugin.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so \
    vendor/xiaomi/virgo/proprietary/bin/lowi-server:system/bin/lowi-server \
    vendor/xiaomi/virgo/proprietary/bin/xtwifi-client:system/bin/xtwifi-client \
    vendor/xiaomi/virgo/proprietary/bin/xtwifi-inet-agent:system/bin/xtwifi-inet-agent \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libsystem_health_mon.so:system/vendor/lib/libsystem_health_mon.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libwifiscanner.so:system/vendor/lib/libwifiscanner.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libxtadapter.so:system/vendor/lib/libxtadapter.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libxtwifi_ulp_adaptor.so:system/vendor/lib/libxtwifi_ulp_adaptor.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libxtwifi_zpp_adaptor.so:system/vendor/lib/libxtwifi_zpp_adaptor.so \
    vendor/xiaomi/virgo/proprietary/lib/libstm-log.so:system/lib/libstm-log.so \
    vendor/xiaomi/virgo/proprietary/etc/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    vendor/xiaomi/virgo/proprietary/etc/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    vendor/xiaomi/virgo/proprietary/etc/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    vendor/xiaomi/virgo/proprietary/bin/qosmgr:system/bin/qosmgr \
    vendor/xiaomi/virgo/proprietary/vendor/lib/lib-rtpcommon.so:system/vendor/lib/lib-rtpcommon.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/lib-rtpsl.so:system/vendor/lib/lib-rtpsl.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/lib-rtpcore.so:system/vendor/lib/lib-rtpcore.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/lib-dplmedia.so:system/vendor/lib/lib-dplmedia.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/lib-rtpdaemoninterface.so:system/vendor/lib/lib-rtpdaemoninterface.so \
    vendor/xiaomi/virgo/proprietary/bin/wcnss_service:system/bin/wcnss_service \
    vendor/xiaomi/virgo/proprietary/bin/wcnss_filter:system/bin/wcnss_filter \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libxml.so:system/vendor/lib/libxml.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/rfsa/adsp/libapps_mem_heap.so:system/lib/rfsa/adsp/libapps_mem_heap.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/rfsa/adsp/libdspCV_skel.so:system/lib/rfsa/adsp/libdspCV_skel.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/rfsa/adsp/libfastcvadsp_skel.so:system/lib/rfsa/adsp/libfastcvadsp_skel.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/rfsa/adsp/libfastcvadsp.so:system/lib/rfsa/adsp/libfastcvadsp.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/rfsa/adsp/libscveT2T_skel.so:system/lib/rfsa/adsp/libscveT2T_skel.so \
    vendor/xiaomi/virgo/proprietary/vendor/lib/libsrsprocessing.so:system/vendor/lib/libsrsprocessing.so

# Sensor
PRODUCT_COPY_FILES += \
    vendor/xiaomi/virgo/proprietary/bin/set_sensorprop.sh:system/bin/set_sensorprop.sh \
    vendor/xiaomi/virgo/proprietary/lib/hw/sensors.leo.so:system/lib/hw/sensors.leo.so \
    vendor/xiaomi/virgo/proprietary/lib/libinputflinger.so:system/lib/libinputflinger.so \
    vendor/xiaomi/virgo/proprietary/lib/libpowermanager.so:system/lib/libpowermanager.so \
    vendor/xiaomi/virgo/proprietary/lib/libsensorservice.so:system/lib/libsensorservice.so

# Sound
PRODUCT_COPY_FILES += \
    vendor/xiaomi/virgo/proprietary/lib/hw/audio.primary.msm8974.so:system/lib/hw/audio.primary.msm8974.so \
    vendor/xiaomi/virgo/proprietary/lib/libtinyalsa.so:system/lib/libtinyalsa.so
