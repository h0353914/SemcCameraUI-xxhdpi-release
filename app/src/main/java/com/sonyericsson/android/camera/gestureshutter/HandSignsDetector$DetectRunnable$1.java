package com.sonyericsson.android.camera.gestureshutter;

/* JADX INFO: loaded from: classes.dex */
class HandSignsDetector$DetectRunnable$1 implements Runnable {
    final /* synthetic */ HandSignsDetector$DetectRunnable this$1;
    final /* synthetic */ HandSignsDetector$DetectResult val$result;

    HandSignsDetector$DetectRunnable$1(HandSignsDetector$DetectRunnable handSignsDetector$DetectRunnable, HandSignsDetector$DetectResult handSignsDetector$DetectResult) {
        this.this$1 = handSignsDetector$DetectRunnable;
        this.val$result = handSignsDetector$DetectResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        HandSignsDetector.access$900(this.this$1.this$0).onDetectResult(this.val$result);
    }
}
