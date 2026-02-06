package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;

/* synthetic */ class CameraDeviceHandler$6 {
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus = new int[CameraDeviceHandler$CameraDeviceStatus.values().length];
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId;

    static {
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[CameraDeviceHandler$CameraDeviceStatus.STATUS_RELEASED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[CameraDeviceHandler$CameraDeviceStatus.STATUS_OPENED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[CameraDeviceHandler$CameraDeviceStatus.STATUS_READY.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[CameraDeviceHandler$CameraDeviceStatus.STATUS_ERROR.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$CameraDeviceStatus[CameraDeviceHandler$CameraDeviceStatus.STATUS_EVICTED.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion = new int[SlowMotion.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[SlowMotion.SUPER_SLOW_MOTION.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[SlowMotion.SUPER_SLOW_SHOT.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId = new int[CameraInfo$CameraId.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId[CameraInfo$CameraId.BACK.ordinal()] = 1;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId[CameraInfo$CameraId.FRONT.ordinal()] = 2;
        } catch (NoSuchFieldError unused9) {
        }
        $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus = new int[CameraDeviceHandler$OpenClosePerformStatus.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus[CameraDeviceHandler$OpenClosePerformStatus.BYPASS_CAMERA_CLOSED.ordinal()] = 1;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus[CameraDeviceHandler$OpenClosePerformStatus.NONE.ordinal()] = 2;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenClosePerformStatus[CameraDeviceHandler$OpenClosePerformStatus.BYPASS_CAMERA_OPENED.ordinal()] = 3;
        } catch (NoSuchFieldError unused12) {
        }
        $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus = new int[CameraDeviceHandler$OpenCloseRequestStatus.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus[CameraDeviceHandler$OpenCloseRequestStatus.CAMERA_CLOSING.ordinal()] = 1;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$OpenCloseRequestStatus[CameraDeviceHandler$OpenCloseRequestStatus.BYPASS_CAMERA_CLOSING.ordinal()] = 2;
        } catch (NoSuchFieldError unused14) {
        }
    }
}
