package com.sonyericsson.android.camera.device;

import android.os.Handler;

class CameraController$StreamingImageRetriever implements ImageRetriever {
    final /* synthetic */ CameraController this$0;

    @Override // com.sonyericsson.android.camera.device.ImageRetriever
    public void requestOneShotPreviewCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback, Handler handler) {
    }

    private CameraController$StreamingImageRetriever(CameraController cameraController) {
        this.this$0 = cameraController;
    }

    /* synthetic */ CameraController$StreamingImageRetriever(CameraController cameraController, CameraController$1 cameraController$1) {
        this(cameraController);
    }

    @Override // com.sonyericsson.android.camera.device.ImageRetriever
    public void registerPreviewStreamingCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback, Handler handler) {
        CameraController$PreviewFrameReceiver.access$6000(CameraController.access$5900(this.this$0), new ImageRetriever$CaptureImageRequest(imageRetriever$OnImageRetrieverCallback, false, handler));
    }

    @Override // com.sonyericsson.android.camera.device.ImageRetriever
    public void unregisterPreviewStreamingCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback) {
        if (CameraController$PreviewFrameReceiver.access$6200(CameraController.access$5900(this.this$0), imageRetriever$OnImageRetrieverCallback)) {
            CameraController$PreviewFrameReceiver.access$6000(CameraController.access$5900(this.this$0), null);
        }
    }
}
