package com.sonyericsson.android.camera.gestureshutter;

import android.graphics.Rect;
import com.sonyericsson.android.camera.device.ImageRetriever$OnImageRetrieverCallback;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class HandSignsDetector$2 implements ImageRetriever$OnImageRetrieverCallback {
    final /* synthetic */ HandSignsDetector this$0;

    HandSignsDetector$2(HandSignsDetector handSignsDetector) {
        this.this$0 = handSignsDetector;
    }

    @Override // com.sonyericsson.android.camera.device.ImageRetriever$OnImageRetrieverCallback
    public void onRetrieved(ByteBuffer byteBuffer, int i, Rect rect) {
        synchronized (HandSignsDetector.access$100(this.this$0)) {
            if (HandSignsDetector.access$200(this.this$0)) {
                if (byteBuffer != null && i == 17) {
                    HandSignsDetector.access$500(this.this$0).unregisterPreviewStreamingCallback(this);
                    HandSignsDetector.access$600(this.this$0, rect.width(), rect.height(), byteBuffer);
                }
            }
        }
    }
}
