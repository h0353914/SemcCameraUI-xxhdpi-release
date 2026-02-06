package com.sonyericsson.android.camera.device;

class FaceDetectionResultChecker$1 implements Runnable {
    final /* synthetic */ FaceDetectionResultChecker this$0;
    final /* synthetic */ CameraParameters$FaceDetectionResult val$faceDetectionResult;

    FaceDetectionResultChecker$1(FaceDetectionResultChecker faceDetectionResultChecker, CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        this.this$0 = faceDetectionResultChecker;
        this.val$faceDetectionResult = cameraParameters$FaceDetectionResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (FaceDetectionResultChecker.access$000(this.this$0) != null) {
            FaceDetectionResultChecker.access$000(this.this$0).onFaceDetection(this.val$faceDetectionResult);
        }
    }
}
