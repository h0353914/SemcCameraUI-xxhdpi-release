package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
class BaseRecorderController$StartTask implements Runnable {
    final /* synthetic */ BaseRecorderController this$0;

    private BaseRecorderController$StartTask(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    /* synthetic */ BaseRecorderController$StartTask(BaseRecorderController baseRecorderController, BaseRecorderController$1 baseRecorderController$1) {
        this(baseRecorderController);
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0.mStateLock) {
            if (this.this$0.verifyState(BaseRecorderController$State.RELEASING, BaseRecorderController$State.RELEASED)) {
                BaseRecorderController.access$100("Fail to verify state in StartTask. state:" + BaseRecorderController.access$000(this.this$0).name());
                return;
            }
            if (BaseRecorderController.access$300(this.this$0)) {
                try {
                    Thread.sleep(300L);
                } catch (InterruptedException unused) {
                    CamLog.w("StartTask interrupted");
                }
            }
            try {
                if (!this.this$0.startInternal()) {
                    this.this$0.notifyError();
                }
            } catch (TimeoutException e) {
                if (CamLog.DEBUG) {
                    throw new RuntimeException(e);
                }
                this.this$0.notifyError();
            }
            synchronized (this.this$0.mStateLock) {
                if (this.this$0.verifyState(BaseRecorderController$State.STARTING)) {
                    this.this$0.changeTo(BaseRecorderController$State.RECORDING);
                }
            }
        }
    }
}
