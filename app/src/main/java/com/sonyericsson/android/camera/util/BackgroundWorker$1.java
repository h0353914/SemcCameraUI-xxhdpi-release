package com.sonyericsson.android.camera.util;

import android.os.Looper;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
class BackgroundWorker$1 implements Runnable {
    final /* synthetic */ BackgroundWorker this$0;
    final /* synthetic */ CountDownLatch val$readySignal;

    BackgroundWorker$1(BackgroundWorker backgroundWorker, CountDownLatch countDownLatch) {
        this.this$0 = backgroundWorker;
        this.val$readySignal = countDownLatch;
    }

    @Override // java.lang.Runnable
    public void run() {
        Looper.prepare();
        BackgroundWorker.access$002(this.this$0, Looper.myLooper());
        this.val$readySignal.countDown();
        Looper.loop();
    }
}
