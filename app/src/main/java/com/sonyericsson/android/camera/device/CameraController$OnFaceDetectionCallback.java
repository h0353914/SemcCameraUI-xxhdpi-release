package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.util.CamLog;

class CameraController$OnFaceDetectionCallback implements CameraParameters$FaceDetectionCallback {
    final /* synthetic */ CameraController this$0;

    private CameraController$OnFaceDetectionCallback(CameraController cameraController) {
        this.this$0 = cameraController;
    }

    /* synthetic */ CameraController$OnFaceDetectionCallback(CameraController cameraController, CameraController$1 cameraController$1) {
        this(cameraController);
    }

    @Override // com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionCallback
    public void onFaceDetection(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        if (!CameraController.access$6600(this.this$0)) {
            if (CamLog.DEBUG) {
                CamLog.d("Face detection is stopped.");
                return;
            }
            return;
        }
        CameraController.access$000(this.this$0).onFaceDetected(cameraParameters$FaceDetectionResult);
    }
}
