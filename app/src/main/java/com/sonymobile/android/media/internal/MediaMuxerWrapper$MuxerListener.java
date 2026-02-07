package com.sonymobile.android.media.internal;

/* JADX INFO: loaded from: classes.dex */
interface MediaMuxerWrapper$MuxerListener {
    void onInfo(int i, int i2);

    void onMaxDurationReached();

    void onMaxFileSizeReached();

    void onStopError();

    void onWriteError();
}
