package com.sonyericsson.android.camera.device;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCaptureSession$StateCallback;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;

/* JADX INFO: loaded from: classes.dex */
class CameraController$ConfigStateCallback extends CameraCaptureSession$StateCallback {
    private final CameraDeviceHandler$CameraSessionId mSessionId;
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$ConfigStateCallback(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId);
    }

    private CameraController$ConfigStateCallback(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.this$0 = cameraController;
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
    }

    @Override // android.hardware.camera2.CameraCaptureSession$StateCallback
    public void onConfigured(CameraCaptureSession cameraCaptureSession) {
        PerfLog.ON_CONFIGURED.begin();
        CameraController.access$1000(this.this$0).postCameraDeviceThread(new CameraController$OnCaptureSessionConfigured(this.this$0, this.mSessionId, cameraCaptureSession, this, null));
        PerfLog.ON_CONFIGURED.end();
    }

    @Override // android.hardware.camera2.CameraCaptureSession$StateCallback
    public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        CameraController.access$1000(this.this$0).postCameraDeviceThread(new CameraController$OnCaptureSessionConfigured(this.this$0, this.mSessionId, null, this, null));
    }

    @Override // android.hardware.camera2.CameraCaptureSession$StateCallback
    public void onClosed(CameraCaptureSession cameraCaptureSession) {
        CamLog.d("onClosed()");
    }
}
