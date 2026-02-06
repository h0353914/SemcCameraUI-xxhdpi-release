package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$StartVideoRecordingCallback;

class DefaultRecorderController$StartVideoRecordingCallbackImpl implements BypassCamera$StartVideoRecordingCallback {
    private final DefaultRecorderController$CallbackLock mLock;

    public DefaultRecorderController$StartVideoRecordingCallbackImpl(DefaultRecorderController$CallbackLock defaultRecorderController$CallbackLock) {
        this.mLock = defaultRecorderController$CallbackLock;
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$StartVideoRecordingCallback
    public void onStartVideoRecordingDone() {
        DefaultRecorderController.access$000("onStartVideoRecordingDone() E");
        this.mLock.unlock();
        DefaultRecorderController.access$000("onStartVideoRecordingDone() X");
    }
}
