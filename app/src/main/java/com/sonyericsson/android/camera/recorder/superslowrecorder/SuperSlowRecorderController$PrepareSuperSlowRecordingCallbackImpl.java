package com.sonyericsson.android.camera.recorder.superslowrecorder;

import com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController$CallbackLock;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$PrepareSuperSlowRecordingCallback;

/* JADX INFO: loaded from: classes.dex */
class SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl implements BypassCamera$PrepareSuperSlowRecordingCallback {
    private final DefaultRecorderController$CallbackLock mLock;

    public SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl(DefaultRecorderController$CallbackLock defaultRecorderController$CallbackLock) {
        this.mLock = defaultRecorderController$CallbackLock;
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$PrepareSuperSlowRecordingCallback
    public void onPrepareSuperSlowRecordingDone() {
        SuperSlowRecorderController.access$900("onPrepareSuperSlowRecordingDone() E");
        this.mLock.unlock();
        SuperSlowRecorderController.access$900("onPrepareSuperSlowRecordingDone() X");
    }
}
