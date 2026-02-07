package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class ObjectTrackingResultChecker$1 implements Runnable {
    final /* synthetic */ ObjectTrackingResultChecker this$0;
    final /* synthetic */ CameraParameters$ObjectTrackingResult val$objectTrackingResult;

    ObjectTrackingResultChecker$1(ObjectTrackingResultChecker objectTrackingResultChecker, CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        this.this$0 = objectTrackingResultChecker;
        this.val$objectTrackingResult = cameraParameters$ObjectTrackingResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ObjectTrackingResultChecker.access$000(this.this$0) != null) {
            ObjectTrackingResultChecker.access$000(this.this$0).onObjectTracked(this.val$objectTrackingResult);
        }
    }
}
