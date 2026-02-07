package com.sonyericsson.android.camera.recorder.defaultrecorder;

/* JADX INFO: loaded from: classes.dex */
class BaseRecorderController$ResumeTask implements Runnable {
    final /* synthetic */ BaseRecorderController this$0;

    private BaseRecorderController$ResumeTask(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    /* synthetic */ BaseRecorderController$ResumeTask(BaseRecorderController baseRecorderController, BaseRecorderController$1 baseRecorderController$1) {
        this(baseRecorderController);
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0.mStateLock) {
            if (this.this$0.verifyState(BaseRecorderController$State.RELEASING, BaseRecorderController$State.RELEASED)) {
                BaseRecorderController.access$100("Fail to verify state in ResumeTask. state:" + BaseRecorderController.access$000(this.this$0).name());
                return;
            }
            if (this.this$0.resumeInternal()) {
                return;
            }
            this.this$0.notifyError();
        }
    }
}
