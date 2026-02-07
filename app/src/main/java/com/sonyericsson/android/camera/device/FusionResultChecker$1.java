package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class FusionResultChecker$1 implements Runnable {
    final /* synthetic */ FusionResultChecker this$0;
    final /* synthetic */ CameraParameters$FusionResult val$result;

    FusionResultChecker$1(FusionResultChecker fusionResultChecker, CameraParameters$FusionResult cameraParameters$FusionResult) {
        this.this$0 = fusionResultChecker;
        this.val$result = cameraParameters$FusionResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (FusionResultChecker.access$000(this.this$0) != null) {
            FusionResultChecker.access$000(this.this$0).onFusionResultChanged(this.val$result);
        }
    }
}
