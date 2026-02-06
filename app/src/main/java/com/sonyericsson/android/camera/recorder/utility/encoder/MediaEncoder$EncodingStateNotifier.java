package com.sonyericsson.android.camera.recorder.utility.encoder;

class MediaEncoder$EncodingStateNotifier implements MediaMuxerWrapper$MuxerListener {
    private final MediaEncoder$StateListener mStateListener;

    MediaEncoder$EncodingStateNotifier(MediaEncoder$StateListener mediaEncoder$StateListener) {
        this.mStateListener = mediaEncoder$StateListener;
    }

    public void notifyOnStarted() {
        this.mStateListener.onStarted();
    }

    public void notifyOnFinished(boolean z) {
        this.mStateListener.onFinished(z);
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.MediaMuxerWrapper$MuxerListener
    public void onProgress(long j) {
        this.mStateListener.onProgress(j);
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.MediaMuxerWrapper$MuxerListener
    public void onMaxDurationReached() {
        this.mStateListener.onMaxDurationReached();
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.MediaMuxerWrapper$MuxerListener
    public void onMaxFileSizeReached() {
        this.mStateListener.onMaxFileSizeReached();
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.MediaMuxerWrapper$MuxerListener
    public void onStorageFull() {
        this.mStateListener.onStorageFull();
    }
}
