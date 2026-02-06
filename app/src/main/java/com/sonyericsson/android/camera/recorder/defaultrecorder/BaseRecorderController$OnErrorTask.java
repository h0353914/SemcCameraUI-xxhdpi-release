package com.sonyericsson.android.camera.recorder.defaultrecorder;

class BaseRecorderController$OnErrorTask implements Runnable {
    final /* synthetic */ BaseRecorderController this$0;

    private BaseRecorderController$OnErrorTask(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    /* synthetic */ BaseRecorderController$OnErrorTask(BaseRecorderController baseRecorderController, BaseRecorderController$1 baseRecorderController$1) {
        this(baseRecorderController);
    }

    @Override // java.lang.Runnable
    public void run() {
        BaseRecorderController.access$100("onError() E");
        synchronized (this.this$0.mStateLock) {
            if (this.this$0.verifyState(BaseRecorderController$State.IDLE, BaseRecorderController$State.RELEASING)) {
                return;
            }
            BaseRecorderController.access$800(this.this$0);
            BaseRecorderController.access$500(this.this$0).onRecordError(0, 0);
            BaseRecorderController.access$100("onError() X");
        }
    }
}
