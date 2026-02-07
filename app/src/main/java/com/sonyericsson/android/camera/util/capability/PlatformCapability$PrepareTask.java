package com.sonyericsson.android.camera.util.capability;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
class PlatformCapability$PrepareTask implements Runnable {
    private PlatformCapability$OnPlatformCapabilityPreparedCallback mCallback;
    private final CountDownLatch mLatch;

    /* synthetic */ PlatformCapability$PrepareTask(CountDownLatch countDownLatch, PlatformCapability$OnPlatformCapabilityPreparedCallback platformCapability$OnPlatformCapabilityPreparedCallback, PlatformCapability$1 platformCapability$1) {
        this(countDownLatch, platformCapability$OnPlatformCapabilityPreparedCallback);
    }

    private PlatformCapability$PrepareTask(CountDownLatch countDownLatch, PlatformCapability$OnPlatformCapabilityPreparedCallback platformCapability$OnPlatformCapabilityPreparedCallback) {
        this.mLatch = countDownLatch;
        this.mCallback = platformCapability$OnPlatformCapabilityPreparedCallback;
    }

    @Override // java.lang.Runnable
    public void run() {
        PlatformCapability.access$100(this.mLatch, this.mCallback);
    }
}
