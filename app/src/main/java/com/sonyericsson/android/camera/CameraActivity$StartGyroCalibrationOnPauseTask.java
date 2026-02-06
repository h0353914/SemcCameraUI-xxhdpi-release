package com.sonyericsson.android.camera;

import android.content.Intent;

final class CameraActivity$StartGyroCalibrationOnPauseTask implements Runnable {
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$StartGyroCalibrationOnPauseTask(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$StartGyroCalibrationOnPauseTask(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // java.lang.Runnable
    public void run() {
        Intent intent = new Intent("com.sonymobile.cameracommon.action.REQUEST_SOMC_CAMERA_SERVICE");
        intent.setPackage("com.sonymobile.cameracommon");
        intent.putExtra("android.intent.extra.SUBJECT", CameraActivity$RequestTypeForSomcCameraService.GYRO_CALIBRATION.mExtraValue);
        this.this$0.getApplicationContext().startService(intent);
    }
}
