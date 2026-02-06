package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.recorder.utility.Accessor;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera;

class CameraDeviceHandler$3 implements Accessor<BypassCamera> {
    final /* synthetic */ CameraDeviceHandler this$0;

    CameraDeviceHandler$3(CameraDeviceHandler cameraDeviceHandler) {
        this.this$0 = cameraDeviceHandler;
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.Accessor
    public /* bridge */ /* synthetic */ BypassCamera get() {
        return get();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.recorder.utility.Accessor
    public BypassCamera get() {
        return CameraDeviceHandler.access$300(this.this$0).getBypassCameraInstance();
    }
}
