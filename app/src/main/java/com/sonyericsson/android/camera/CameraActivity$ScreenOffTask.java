package com.sonyericsson.android.camera;

import android.content.Intent;

final class CameraActivity$ScreenOffTask implements Runnable {
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$ScreenOffTask(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$ScreenOffTask(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // java.lang.Runnable
    public void run() {
        Intent intent = new Intent("com.sonymobile.cameracommon.action.REQUEST_SOMC_CAMERA_SERVICE");
        intent.setPackage("com.sonymobile.cameracommon");
        intent.putExtra("android.intent.extra.SUBJECT", CameraActivity$RequestTypeForSomcCameraService.SCREEN_OFF.mExtraValue);
        this.this$0.getApplicationContext().startService(intent);
    }
}
