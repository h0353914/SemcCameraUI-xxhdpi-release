package com.sonyericsson.android.camera.recorder.utility.encoder;

/* JADX INFO: loaded from: classes.dex */
public interface MediaEncoder$StateListener {
    void onFinished(boolean z);

    void onMaxDurationReached();

    void onMaxFileSizeReached();

    void onProgress(long j);

    void onStarted();

    void onStorageFull();
}
