package com.sonyericsson.android.camera;

final class CameraActivity$ThermalAlertReceiverOnDestroyTask implements Runnable {
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$ThermalAlertReceiverOnDestroyTask(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$ThermalAlertReceiverOnDestroyTask(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (CameraActivity.access$2000(this.this$0)) {
            if (!CameraActivity.access$3800(this.this$0)) {
                CameraActivity.access$3802(this.this$0, true);
                CameraActivity.access$2000(this.this$0).onDestroy();
                CameraActivity.access$2200(this.this$0).onDestroy();
            }
        }
    }
}
