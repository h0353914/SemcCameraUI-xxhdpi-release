package com.sonyericsson.android.camera.recorder.utility.encoder;

/* JADX INFO: loaded from: classes.dex */
public interface MediaMuxerWrapper$MuxerListener {
    void onMaxDurationReached();

    void onMaxFileSizeReached();

    void onProgress(long j);

    void onStorageFull();
}
