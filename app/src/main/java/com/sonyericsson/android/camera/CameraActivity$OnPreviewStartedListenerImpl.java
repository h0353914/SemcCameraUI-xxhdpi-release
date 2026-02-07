package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraSessionId;
import com.sonyericsson.android.camera.device.CameraDeviceHandler$OnPreviewStartedListener;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$OnPreviewStartedListenerImpl implements CameraDeviceHandler$OnPreviewStartedListener {
    private final CameraDeviceHandler$CameraSessionId mCameraSessionId;
    final /* synthetic */ CameraActivity this$0;

    public CameraActivity$OnPreviewStartedListenerImpl(CameraActivity cameraActivity, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.this$0 = cameraActivity;
        this.mCameraSessionId = cameraDeviceHandler$CameraSessionId;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$OnPreviewStartedListener
    public void onPreviewStarted(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        if (this.mCameraSessionId == cameraDeviceHandler$CameraSessionId) {
            this.this$0.reportFullyDrawnOnce();
        }
    }
}
