package com.sonyericsson.android.camera.recorder.superslowrecorder;

import com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController$CallbackLock;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$StartSuperSlowRecordingCallback;

/* JADX INFO: loaded from: classes.dex */
class SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl implements BypassCamera$StartSuperSlowRecordingCallback {
    private final DefaultRecorderController$CallbackLock mLock;

    public SuperSlowRecorderController$StartSuperSlowRecordingCallbackImpl(DefaultRecorderController$CallbackLock defaultRecorderController$CallbackLock) {
        this.mLock = defaultRecorderController$CallbackLock;
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$StartSuperSlowRecordingCallback
    public void onStartSuperSlowRecordingDone() {
        SuperSlowRecorderController.access$900("onStartSuperSlowRecordingDone() E");
        this.mLock.unlock();
        SuperSlowRecorderController.access$900("onStartSuperSlowRecordingDone() X");
    }
}
