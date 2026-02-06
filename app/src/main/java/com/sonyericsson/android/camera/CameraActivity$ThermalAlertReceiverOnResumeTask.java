package com.sonyericsson.android.camera;

final class CameraActivity$ThermalAlertReceiverOnResumeTask implements Runnable {
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$ThermalAlertReceiverOnResumeTask(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$ThermalAlertReceiverOnResumeTask(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // java.lang.Runnable
    public void run() {
        CameraActivity.access$2000(this.this$0).onResume();
        CameraActivity.access$2200(this.this$0).onResume();
    }
}
