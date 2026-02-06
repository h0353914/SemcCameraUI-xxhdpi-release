package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import java.nio.ByteBuffer;

public interface ImageRetriever$OnImageRetrieverCallback {
    void onRetrieved(ByteBuffer byteBuffer, int i, Rect rect);
}
