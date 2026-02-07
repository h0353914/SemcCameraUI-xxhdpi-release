package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import android.content.Intent;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class WearableBridgeClient$NotifyCaptureSucceededTask implements Runnable {
    final /* synthetic */ WearableBridgeClient this$0;

    private WearableBridgeClient$NotifyCaptureSucceededTask(WearableBridgeClient wearableBridgeClient) {
        this.this$0 = wearableBridgeClient;
    }

    /* synthetic */ WearableBridgeClient$NotifyCaptureSucceededTask(WearableBridgeClient wearableBridgeClient, WearableBridgeClient$1 wearableBridgeClient$1) {
        this(wearableBridgeClient);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("NotifyCaptureSucceededTask.run() : E");
        }
        if (!WearableBridgeClient.access$1700(this.this$0)) {
            if (CamLog.DEBUG) {
                CamLog.d("onStateChanged() : Observer disabled.");
            }
        } else {
            Intent intentAccess$1900 = WearableBridgeClient.access$1900(this.this$0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_CAPTURE_COMPLETED");
            intentAccess$1900.putExtra("wearable-bridge-completion-status-key", true);
            WearableBridgeClient.access$1800(this.this$0).sendBroadcast(intentAccess$1900);
            if (CamLog.DEBUG) {
                CamLog.d("NotifyCaptureSucceededTask.run() : X");
            }
        }
    }
}
