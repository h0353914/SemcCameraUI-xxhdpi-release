package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonyericsson.android.camera.recorder.utility.ReferenceClock$TickCallback;

class BaseRecorderController$6 implements ReferenceClock$TickCallback {
    final /* synthetic */ BaseRecorderController this$0;

    BaseRecorderController$6(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.ReferenceClock$TickCallback
    public void onTick(long j) {
        synchronized (this.this$0.mStateLock) {
            if (this.this$0.verifyState(BaseRecorderController$State.IDLE, BaseRecorderController$State.RELEASING)) {
                return;
            }
            if (BaseRecorderController.access$400(this.this$0) != null) {
                BaseRecorderController.access$400(this.this$0).notifyWriteStorage();
            }
            BaseRecorderController.access$500(this.this$0).onRecordProgress(j);
        }
    }
}
