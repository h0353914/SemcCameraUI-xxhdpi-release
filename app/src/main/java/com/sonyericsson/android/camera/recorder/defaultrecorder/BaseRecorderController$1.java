package com.sonyericsson.android.camera.recorder.defaultrecorder;

class BaseRecorderController$1 implements Runnable {
    final /* synthetic */ BaseRecorderController this$0;

    BaseRecorderController$1(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0.mStateLock) {
            if (this.this$0.verifyState(BaseRecorderController$State.RELEASED)) {
                BaseRecorderController.access$100("release() X already released on the other");
                return;
            }
            this.this$0.releaseInternal();
            synchronized (this.this$0.mStateLock) {
                this.this$0.changeTo(BaseRecorderController$State.RELEASED);
            }
        }
    }
}
