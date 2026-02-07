package com.sonyericsson.android.camera.device;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public interface ImageRetriever {
    void registerPreviewStreamingCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback, Handler handler);

    void requestOneShotPreviewCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback, Handler handler);

    void unregisterPreviewStreamingCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback);
}
