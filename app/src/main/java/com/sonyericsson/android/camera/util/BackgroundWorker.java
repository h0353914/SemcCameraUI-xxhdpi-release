package com.sonyericsson.android.camera.util;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class BackgroundWorker {
    private static final int SHUTDOWN_TIMEOUT_MILLISECONDS = 2000;
    private static final String THREAD_NAME = "BgWorker";
    private final ExecutorService mExecutor;
    private final Handler mHandler;
    private Looper mLooper = null;

    static /* synthetic */ Looper access$002(BackgroundWorker backgroundWorker, Looper looper) {
        backgroundWorker.mLooper = looper;
        return looper;
    }

    public BackgroundWorker(String str) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.mExecutor = ThreadUtil.buildExecutor(TextUtils.isEmpty(str) ? "BgWorker" : str);
        this.mExecutor.execute(new BackgroundWorker$1(this, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
        }
        this.mHandler = new Handler(this.mLooper);
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    public void quit() throws InterruptedException {
        this.mLooper.quitSafely();
        this.mExecutor.shutdown();
        this.mExecutor.awaitTermination(2000L, TimeUnit.MILLISECONDS);
    }
}
