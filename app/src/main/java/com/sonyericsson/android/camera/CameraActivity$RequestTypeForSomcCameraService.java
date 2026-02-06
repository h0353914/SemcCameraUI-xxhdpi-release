package com.sonyericsson.android.camera;

enum CameraActivity$RequestTypeForSomcCameraService {
    GYRO_CALIBRATION(0),
    SCREEN_OFF(1);

    public final int mExtraValue;

    CameraActivity$RequestTypeForSomcCameraService(int i) {
        this.mExtraValue = i;
    }
}
