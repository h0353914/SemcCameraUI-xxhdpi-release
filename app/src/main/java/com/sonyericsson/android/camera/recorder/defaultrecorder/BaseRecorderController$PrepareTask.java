package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonyericsson.android.camera.recorder.RecorderParameters;

/* JADX INFO: loaded from: classes.dex */
class BaseRecorderController$PrepareTask implements Runnable {
    private final RecorderParameters mParameters;
    final /* synthetic */ BaseRecorderController this$0;

    public BaseRecorderController$PrepareTask(BaseRecorderController baseRecorderController, RecorderParameters recorderParameters) {
        this.this$0 = baseRecorderController;
        this.mParameters = recorderParameters;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0.mStateLock) {
            if (this.this$0.verifyState(BaseRecorderController$State.RELEASING, BaseRecorderController$State.RELEASED)) {
                BaseRecorderController.access$100("Fail to verify state in PrepareTask. state:" + BaseRecorderController.access$000(this.this$0).name());
                return;
            }
            if (this.this$0.prepareInternal(this.mParameters)) {
                return;
            }
            this.this$0.notifyError();
        }
    }
}
