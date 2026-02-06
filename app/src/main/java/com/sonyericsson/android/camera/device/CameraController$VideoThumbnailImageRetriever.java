package com.sonyericsson.android.camera.device;

import android.media.ImageReader;
import android.os.Handler;
import com.sonyericsson.android.camera.util.CamLog;

class CameraController$VideoThumbnailImageRetriever implements ImageRetriever {
    private final ImageReader mImageReader;
    private final CameraDeviceHandler$CameraSessionId mSessionId;
    final /* synthetic */ CameraController this$0;

    @Override // com.sonyericsson.android.camera.device.ImageRetriever
    public void registerPreviewStreamingCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback, Handler handler) {
    }

    @Override // com.sonyericsson.android.camera.device.ImageRetriever
    public void unregisterPreviewStreamingCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback) {
    }

    /* synthetic */ CameraController$VideoThumbnailImageRetriever(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, ImageReader imageReader, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId, imageReader);
    }

    private CameraController$VideoThumbnailImageRetriever(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, ImageReader imageReader) {
        this.this$0 = cameraController;
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
        this.mImageReader = imageReader;
    }

    @Override // com.sonyericsson.android.camera.device.ImageRetriever
    public void requestOneShotPreviewCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback, Handler handler) {
        if (this.mImageReader == null) {
            return;
        }
        try {
            if (CameraController.access$1800(this.this$0) != null) {
                CameraParameterValidator.validate(CameraController.access$1800(this.this$0).getId(), CameraController.access$1700(this.this$0));
            }
        } catch (RuntimeException e) {
            if (CamLog.DEBUG) {
                throw e;
            }
            CamLog.e("Fail to valid camera parameter. : " + e.getMessage());
        }
        CameraController$PreviewFrameReceiver.access$6000(CameraController.access$5900(this.this$0), new ImageRetriever$CaptureImageRequest(imageRetriever$OnImageRetrieverCallback, true, handler));
        this.mImageReader.setOnImageAvailableListener(CameraController.access$5900(this.this$0), CameraController.access$1000(this.this$0).getDeviceThreadHandler());
        CameraController.access$1000(this.this$0).postCameraDeviceThread(new CameraController$OneShotCaptureTask(this.this$0, this.mSessionId, CameraController.access$1700(this.this$0), this.mImageReader, null));
    }
}
