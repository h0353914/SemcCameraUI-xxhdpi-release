package com.sonyericsson.android.camera.recorder.superslowrecorder;

/* JADX INFO: loaded from: classes.dex */
class SuperSlowShotRecorderController$1 implements Runnable {
    final /* synthetic */ SuperSlowShotRecorderController this$0;

    SuperSlowShotRecorderController$1(SuperSlowShotRecorderController superSlowShotRecorderController) {
        this.this$0 = superSlowShotRecorderController;
    }

    @Override // java.lang.Runnable
    public void run() {
        SuperSlowShotRecorderController.access$700(this.this$0).onSuperSlowRecordingFinished();
    }
}
