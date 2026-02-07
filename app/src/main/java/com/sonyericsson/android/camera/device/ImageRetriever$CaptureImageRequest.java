package com.sonyericsson.android.camera.device;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public class ImageRetriever$CaptureImageRequest {
    protected final ImageRetriever$OnImageRetrieverCallback callback;
    protected final Handler handler;
    protected final boolean isOneShot;

    public ImageRetriever$CaptureImageRequest(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback, boolean z, Handler handler) {
        this.callback = imageRetriever$OnImageRetrieverCallback;
        this.isOneShot = z;
        this.handler = handler;
    }
}
