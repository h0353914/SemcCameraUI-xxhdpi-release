package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability$OnPlatformCapabilityPreparedCallback;

class CameraActivity$6 implements PlatformCapability$OnPlatformCapabilityPreparedCallback {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$6(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // com.sonyericsson.android.camera.util.capability.PlatformCapability$OnPlatformCapabilityPreparedCallback
    public void onPrepared() {
        if (CamLog.DEBUG) {
            CamLog.d("PlatformCapability Prepared");
        }
        ((CameraApplication) this.this$0.getApplication()).getUserSettingsLoader().load();
    }
}
