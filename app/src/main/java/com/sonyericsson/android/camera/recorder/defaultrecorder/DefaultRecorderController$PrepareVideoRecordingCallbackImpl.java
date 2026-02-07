package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$PrepareVideoRecordingCallback;

/* JADX INFO: loaded from: classes.dex */
class DefaultRecorderController$PrepareVideoRecordingCallbackImpl implements BypassCamera$PrepareVideoRecordingCallback {
    private final DefaultRecorderController$CallbackLock mLock;

    public DefaultRecorderController$PrepareVideoRecordingCallbackImpl(DefaultRecorderController$CallbackLock defaultRecorderController$CallbackLock) {
        this.mLock = defaultRecorderController$CallbackLock;
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$PrepareVideoRecordingCallback
    public void onPrepareVideoRecordingDone() {
        DefaultRecorderController.access$000("onPrepareVideoRecordingDone() E");
        this.mLock.unlock();
        DefaultRecorderController.access$000("onPrepareVideoRecordingDone() X");
    }
}
