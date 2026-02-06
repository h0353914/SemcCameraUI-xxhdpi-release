package com.sonyericsson.android.camera;

import com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver;

final class CameraActivity$ThermalAlertReceiverCreateTask implements Runnable {
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$ThermalAlertReceiverCreateTask(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$ThermalAlertReceiverCreateTask(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // java.lang.Runnable
    public void run() {
        CameraActivity.access$2002(this.this$0, new ThermalAlertReceiver(this.this$0, CameraActivity.access$2100(this.this$0)));
    }
}
