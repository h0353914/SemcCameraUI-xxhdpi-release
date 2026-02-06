package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.configuration.parameters.FastCapture;

/* synthetic */ class BypassCameraController$3 {
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture = new int[FastCapture.values().length];
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId;

    static {
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture[FastCapture.LAUNCH_ONLY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture[FastCapture.LAUNCH_AND_CAPTURE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId = new int[CameraInfo$CameraId.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId[CameraInfo$CameraId.BACK.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId[CameraInfo$CameraId.FRONT.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
