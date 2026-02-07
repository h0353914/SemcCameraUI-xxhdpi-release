package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability$OnPlatformCapabilityPreparedCallback;

/* JADX INFO: loaded from: classes.dex */
class CameraApplication$1 implements PlatformCapability$OnPlatformCapabilityPreparedCallback {
    final /* synthetic */ CameraApplication this$0;

    CameraApplication$1(CameraApplication cameraApplication) {
        this.this$0 = cameraApplication;
    }

    @Override // com.sonyericsson.android.camera.util.capability.PlatformCapability$OnPlatformCapabilityPreparedCallback
    public void onPrepared() {
        if (CamLog.DEBUG) {
            CamLog.d("PlatformCapability Prepared");
        }
        CameraApplication.access$000(this.this$0).load();
    }
}
