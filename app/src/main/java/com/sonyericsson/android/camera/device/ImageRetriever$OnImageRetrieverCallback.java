package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface ImageRetriever$OnImageRetrieverCallback {
    void onRetrieved(ByteBuffer byteBuffer, int i, Rect rect);
}
