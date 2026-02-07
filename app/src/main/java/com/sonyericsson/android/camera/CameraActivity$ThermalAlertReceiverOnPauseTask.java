package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.research.LocalResearchUtil;

/* JADX INFO: loaded from: classes.dex */
final class CameraActivity$ThermalAlertReceiverOnPauseTask implements Runnable {
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$ThermalAlertReceiverOnPauseTask(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$ThermalAlertReceiverOnPauseTask(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // java.lang.Runnable
    public void run() {
        CameraActivity.access$2000(this.this$0).onPause();
        LocalResearchUtil.getInstance().setMeasurementThermal(false);
        CameraActivity.access$2200(this.this$0).onPause();
    }
}
