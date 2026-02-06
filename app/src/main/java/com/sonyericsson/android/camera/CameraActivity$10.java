package com.sonyericsson.android.camera;

class CameraActivity$10 implements Runnable {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$10(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CameraActivity.access$2900(this.this$0) != null) {
            CameraActivity.access$2900(this.this$0).hideAutoPowerOffHintText();
        }
    }
}
