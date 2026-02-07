package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonyericsson.android.camera.recorder.RecorderController$Result;

/* JADX INFO: loaded from: classes.dex */
class BaseRecorderController$StopTask implements Runnable {
    final /* synthetic */ BaseRecorderController this$0;

    private BaseRecorderController$StopTask(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    /* synthetic */ BaseRecorderController$StopTask(BaseRecorderController baseRecorderController, BaseRecorderController$1 baseRecorderController$1) {
        this(baseRecorderController);
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0.mStateLock) {
            if (this.this$0.verifyState(BaseRecorderController$State.RELEASED)) {
                BaseRecorderController.access$100("Fail to verify state in StopTask. state:" + BaseRecorderController.access$000(this.this$0).name());
                return;
            }
            if (!BaseRecorderController.access$700(this.this$0)) {
                BaseRecorderController.access$800(this.this$0);
            }
            boolean zStopInternal = this.this$0.stopInternal();
            BaseRecorderController.access$800(this.this$0);
            synchronized (this.this$0.mStateLock) {
                BaseRecorderController.access$900(this.this$0, zStopInternal ? RecorderController$Result.SUCCESS : RecorderController$Result.FAIL);
            }
        }
    }
}
