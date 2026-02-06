package com.sonyericsson.android.camera.recorder.superslowrecorder;

import com.sonyericsson.android.camera.recorder.defaultrecorder.DefaultRecorderController$CallbackLock;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$StartSuperSlowRecordingCallback;

class SuperSlowShotRecorderController$StartSuperSlowRecordingCallbackImpl implements BypassCamera$StartSuperSlowRecordingCallback {
    private final DefaultRecorderController$CallbackLock mLock;

    public SuperSlowShotRecorderController$StartSuperSlowRecordingCallbackImpl(DefaultRecorderController$CallbackLock defaultRecorderController$CallbackLock) {
        this.mLock = defaultRecorderController$CallbackLock;
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$StartSuperSlowRecordingCallback
    public void onStartSuperSlowRecordingDone() {
        SuperSlowShotRecorderController.access$100("onStartSuperSlowRecordingDone() E");
        this.mLock.unlock();
        SuperSlowShotRecorderController.access$100("onStartSuperSlowRecordingDone() X");
    }
}
