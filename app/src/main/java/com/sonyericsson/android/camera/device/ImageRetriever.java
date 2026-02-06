package com.sonyericsson.android.camera.device;

import android.os.Handler;

public interface ImageRetriever {
    void registerPreviewStreamingCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback, Handler handler);

    void requestOneShotPreviewCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback, Handler handler);

    void unregisterPreviewStreamingCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback);
}
