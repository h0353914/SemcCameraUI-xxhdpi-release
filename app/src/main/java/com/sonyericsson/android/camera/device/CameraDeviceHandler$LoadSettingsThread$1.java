package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.mediasaving.location.LocationSettingsReader;

class CameraDeviceHandler$LoadSettingsThread$1 extends CameraDeviceHandler$CameraDeviceAccessTask {
    final /* synthetic */ CameraDeviceHandler$LoadSettingsThread this$1;

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    protected boolean verifyCameraDeviceStatus() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraDeviceHandler$LoadSettingsThread$1(CameraDeviceHandler$LoadSettingsThread cameraDeviceHandler$LoadSettingsThread, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        super(cameraDeviceHandler$CameraSessionId);
        this.this$1 = cameraDeviceHandler$LoadSettingsThread;
    }

    @Override // com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraDeviceAccessTask
    public void doCameraDeviceAccess() {
        if (CameraDeviceHandler.access$1600(this.this$1.this$0) != null && CameraDeviceHandler.access$1700(this.this$1.this$0) != null) {
            CameraDeviceHandler.access$1700(this.this$1.this$0).startLocationUpdates(LocationSettingsReader.isLocationProviderAllowed(CameraDeviceHandler.access$1600(this.this$1.this$0), "gps"), LocationSettingsReader.isLocationProviderAllowed(CameraDeviceHandler.access$1600(this.this$1.this$0), "network"));
        } else {
            CamLog.d("Camera has been released.");
        }
    }
}
