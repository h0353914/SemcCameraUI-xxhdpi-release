package com.sonyericsson.android.camera.recorder.defaultrecorder;

/* JADX INFO: loaded from: classes.dex */
class BaseRecorderController$7 implements Runnable {
    final /* synthetic */ BaseRecorderController this$0;

    BaseRecorderController$7(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    @Override // java.lang.Runnable
    public void run() {
        BaseRecorderController.access$1900(this.this$0).onTick(BaseRecorderController.access$1800(this.this$0));
    }
}
