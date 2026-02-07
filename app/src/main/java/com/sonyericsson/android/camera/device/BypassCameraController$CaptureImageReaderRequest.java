package com.sonyericsson.android.camera.device;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
class BypassCameraController$CaptureImageReaderRequest {
    private CameraDeviceHandler$ImageReaderInitializedCallback mCallback;
    private Rect mCaptureSize;
    private int mCapturingBufferNum;
    private int mImageReaderBufferNum;

    private BypassCameraController$CaptureImageReaderRequest() {
    }

    /* synthetic */ BypassCameraController$CaptureImageReaderRequest(BypassCameraController$1 bypassCameraController$1) {
        this();
    }

    static /* synthetic */ int access$4000(BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest) {
        return bypassCameraController$CaptureImageReaderRequest.mImageReaderBufferNum;
    }

    static /* synthetic */ int access$4002(BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest, int i) {
        bypassCameraController$CaptureImageReaderRequest.mImageReaderBufferNum = i;
        return i;
    }

    static /* synthetic */ int access$4100(BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest) {
        return bypassCameraController$CaptureImageReaderRequest.mCapturingBufferNum;
    }

    static /* synthetic */ int access$4102(BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest, int i) {
        bypassCameraController$CaptureImageReaderRequest.mCapturingBufferNum = i;
        return i;
    }

    static /* synthetic */ Rect access$4200(BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest) {
        return bypassCameraController$CaptureImageReaderRequest.mCaptureSize;
    }

    static /* synthetic */ Rect access$4202(BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest, Rect rect) {
        bypassCameraController$CaptureImageReaderRequest.mCaptureSize = rect;
        return rect;
    }

    static /* synthetic */ CameraDeviceHandler$ImageReaderInitializedCallback access$4300(BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest) {
        return bypassCameraController$CaptureImageReaderRequest.mCallback;
    }

    static /* synthetic */ CameraDeviceHandler$ImageReaderInitializedCallback access$4302(BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest, CameraDeviceHandler$ImageReaderInitializedCallback cameraDeviceHandler$ImageReaderInitializedCallback) {
        bypassCameraController$CaptureImageReaderRequest.mCallback = cameraDeviceHandler$ImageReaderInitializedCallback;
        return cameraDeviceHandler$ImageReaderInitializedCallback;
    }

    static /* synthetic */ boolean access$4700(BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest, BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest2) {
        return bypassCameraController$CaptureImageReaderRequest.isSameRequest(bypassCameraController$CaptureImageReaderRequest2);
    }

    private boolean isSameRequest(BypassCameraController$CaptureImageReaderRequest bypassCameraController$CaptureImageReaderRequest) {
        return bypassCameraController$CaptureImageReaderRequest != null && this.mImageReaderBufferNum == bypassCameraController$CaptureImageReaderRequest.mImageReaderBufferNum && this.mCapturingBufferNum == bypassCameraController$CaptureImageReaderRequest.mCapturingBufferNum && this.mCaptureSize != null && bypassCameraController$CaptureImageReaderRequest.mCaptureSize != null && this.mCaptureSize.equals(bypassCameraController$CaptureImageReaderRequest.mCaptureSize);
    }
}
