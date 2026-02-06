package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import java.nio.ByteBuffer;

class CameraController$PreviewFrameReceiver$1 implements Runnable {
    final /* synthetic */ CameraController$PreviewFrameReceiver this$0;
    final /* synthetic */ ByteBuffer val$byteBuffer;
    final /* synthetic */ int val$imgFormat;
    final /* synthetic */ ImageRetriever$CaptureImageRequest val$request;
    final /* synthetic */ Rect val$size;

    CameraController$PreviewFrameReceiver$1(CameraController$PreviewFrameReceiver cameraController$PreviewFrameReceiver, ImageRetriever$CaptureImageRequest imageRetriever$CaptureImageRequest, ByteBuffer byteBuffer, int i, Rect rect) {
        this.this$0 = cameraController$PreviewFrameReceiver;
        this.val$request = imageRetriever$CaptureImageRequest;
        this.val$byteBuffer = byteBuffer;
        this.val$imgFormat = i;
        this.val$size = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.val$request != null) {
            this.val$request.callback.onRetrieved(this.val$byteBuffer, this.val$imgFormat, this.val$size);
        }
    }
}
