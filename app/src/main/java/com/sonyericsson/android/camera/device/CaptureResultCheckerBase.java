package com.sonyericsson.android.camera.device;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public abstract class CaptureResultCheckerBase {
    protected final Handler mHandler;

    public abstract void check(CaptureResultHolder captureResultHolder);

    public CaptureResultCheckerBase(Handler handler) {
        this.mHandler = handler;
    }
}
