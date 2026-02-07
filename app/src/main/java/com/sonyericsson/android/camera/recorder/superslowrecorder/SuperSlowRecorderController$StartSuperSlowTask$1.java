package com.sonyericsson.android.camera.recorder.superslowrecorder;

/* JADX INFO: loaded from: classes.dex */
class SuperSlowRecorderController$StartSuperSlowTask$1 implements Runnable {
    final /* synthetic */ SuperSlowRecorderController$StartSuperSlowTask this$1;

    SuperSlowRecorderController$StartSuperSlowTask$1(SuperSlowRecorderController$StartSuperSlowTask superSlowRecorderController$StartSuperSlowTask) {
        this.this$1 = superSlowRecorderController$StartSuperSlowTask;
    }

    @Override // java.lang.Runnable
    public void run() {
        SuperSlowRecorderController.access$600(this.this$1.this$0).onSuperSlowRecordingFinished();
    }
}
