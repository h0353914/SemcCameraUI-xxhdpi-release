package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public class DefaultRecorderController$CallbackLock {
    private CountDownLatch mLatch = null;

    public CountDownLatch requestLatch() {
        CountDownLatch countDownLatch;
        synchronized (this) {
            if (this.mLatch != null) {
                CamLog.e("requestLock() Lock object already exists.");
            } else {
                this.mLatch = new CountDownLatch(1);
            }
            countDownLatch = this.mLatch;
        }
        return countDownLatch;
    }

    public void release() {
        synchronized (this) {
            this.mLatch = null;
        }
    }

    public void unlock() {
        DefaultRecorderController.access$000("unlock() E");
        synchronized (this) {
            if (this.mLatch == null) {
                return;
            }
            this.mLatch.countDown();
            this.mLatch = null;
            DefaultRecorderController.access$000("unlock() X");
        }
    }
}
