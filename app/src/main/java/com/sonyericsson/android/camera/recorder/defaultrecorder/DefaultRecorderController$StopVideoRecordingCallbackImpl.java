package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$StopVideoRecordingCallback;

class DefaultRecorderController$StopVideoRecordingCallbackImpl implements BypassCamera$StopVideoRecordingCallback {
    private final DefaultRecorderController$CallbackLock mLock;

    public DefaultRecorderController$StopVideoRecordingCallbackImpl(DefaultRecorderController$CallbackLock defaultRecorderController$CallbackLock) {
        this.mLock = defaultRecorderController$CallbackLock;
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$StopVideoRecordingCallback
    public void onStopVideoRecordingDone() {
        DefaultRecorderController.access$000("onStopVideoRecordingDone() E");
        this.mLock.unlock();
        DefaultRecorderController.access$000("onStopVideoRecordingDone() X");
    }
}
