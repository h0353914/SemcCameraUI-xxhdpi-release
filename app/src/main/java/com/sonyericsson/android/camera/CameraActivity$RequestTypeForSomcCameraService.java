package com.sonyericsson.android.camera;

/* JADX INFO: loaded from: classes.dex */
enum CameraActivity$RequestTypeForSomcCameraService {
    GYRO_CALIBRATION(0),
    SCREEN_OFF(1);

    public final int mExtraValue;

    CameraActivity$RequestTypeForSomcCameraService(int i) {
        this.mExtraValue = i;
    }
}
