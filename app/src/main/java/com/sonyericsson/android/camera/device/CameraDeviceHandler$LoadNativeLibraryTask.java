package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera;

class CameraDeviceHandler$LoadNativeLibraryTask extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ CameraDeviceHandler this$0;

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return true;
    }

    private CameraDeviceHandler$LoadNativeLibraryTask(CameraDeviceHandler cameraDeviceHandler) {
        this.this$0 = cameraDeviceHandler;
    }

    /* synthetic */ CameraDeviceHandler$LoadNativeLibraryTask(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler);
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected void doCameraDeviceAccess() {
        if (PlatformCapability.isBypassCameraSupported()) {
            BypassCamera.loadNativeLibrary();
        }
        PlatformCapability.awaitPrepare();
    }
}
