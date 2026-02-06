package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import java.nio.ByteBuffer;

class CameraController$RequestOneImageRetrieverCallback implements ImageRetriever$OnImageRetrieverCallback {
    final /* synthetic */ CameraController this$0;

    private CameraController$RequestOneImageRetrieverCallback(CameraController cameraController) {
        this.this$0 = cameraController;
    }

    /* synthetic */ CameraController$RequestOneImageRetrieverCallback(CameraController cameraController, CameraController$1 cameraController$1) {
        this(cameraController);
    }

    @Override // com.sonyericsson.android.camera.device.ImageRetriever$OnImageRetrieverCallback
    public void onRetrieved(ByteBuffer byteBuffer, int i, Rect rect) {
        CameraController.access$000(this.this$0).onPreviewFrameUpdated(byteBuffer, i, rect);
    }
}
