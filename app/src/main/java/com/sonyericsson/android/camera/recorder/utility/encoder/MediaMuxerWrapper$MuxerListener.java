package com.sonyericsson.android.camera.recorder.utility.encoder;

public interface MediaMuxerWrapper$MuxerListener {
    void onMaxDurationReached();

    void onMaxFileSizeReached();

    void onProgress(long j);

    void onStorageFull();
}
