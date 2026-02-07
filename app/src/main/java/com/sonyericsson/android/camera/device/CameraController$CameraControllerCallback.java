package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
interface CameraController$CameraControllerCallback {
    void onCropRegionReady();

    void onDeviceError(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraDeviceHandler$ErrorCode cameraDeviceHandler$ErrorCode);

    void onFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult);

    void onFusionResultChanged(CameraParameters$FusionResult cameraParameters$FusionResult);

    void onOpenCameraRequested(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId);

    void onPreviewFrameUpdated(ByteBuffer byteBuffer, int i, Rect rect);

    void onReflected(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId);

    void onSceneModeChanged(CameraParameters$SceneRecognitionResult cameraParameters$SceneRecognitionResult);

    void onSessionDisconnected(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId);
}
