package com.sonyericsson.android.camera.recorder.superslowrecorder;

import com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController$CallbackLock;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$PrepareSuperSlowRecordingCallback;

/* JADX INFO: loaded from: classes.dex */
class SuperSlowShotRecorderController$PrepareSuperSlowRecordingCallbackImpl implements BypassCamera$PrepareSuperSlowRecordingCallback {
    private final DefaultRecorderController$CallbackLock mLock;

    public SuperSlowShotRecorderController$PrepareSuperSlowRecordingCallbackImpl(DefaultRecorderController$CallbackLock defaultRecorderController$CallbackLock) {
        this.mLock = defaultRecorderController$CallbackLock;
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$PrepareSuperSlowRecordingCallback
    public void onPrepareSuperSlowRecordingDone() {
        SuperSlowShotRecorderController.access$100("onPrepareSuperSlowRecordingDone() E");
        this.mLock.unlock();
        SuperSlowShotRecorderController.access$100("onPrepareSuperSlowRecordingDone() X");
    }
}
