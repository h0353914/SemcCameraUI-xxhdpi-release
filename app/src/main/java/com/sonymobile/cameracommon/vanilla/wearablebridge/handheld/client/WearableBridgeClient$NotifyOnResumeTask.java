package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class WearableBridgeClient$NotifyOnResumeTask implements Runnable {
    final /* synthetic */ WearableBridgeClient this$0;

    private WearableBridgeClient$NotifyOnResumeTask(WearableBridgeClient wearableBridgeClient) {
        this.this$0 = wearableBridgeClient;
    }

    /* synthetic */ WearableBridgeClient$NotifyOnResumeTask(WearableBridgeClient wearableBridgeClient, WearableBridgeClient$1 wearableBridgeClient$1) {
        this(wearableBridgeClient);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("NotyfyOnResumeTask.run() : E");
        }
        if (WearableBridgeClient.access$1700(this.this$0)) {
            if (CamLog.DEBUG) {
                CamLog.d("Already resumed.");
                return;
            }
            return;
        }
        WearableBridgeClient.access$1800(this.this$0).registerReceiver(WearableBridgeClient.access$700(this.this$0), WearableBridgeClient.access$1200(this.this$0));
        WearableBridgeClient.access$1800(this.this$0).sendBroadcast(WearableBridgeClient.access$1900(this.this$0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_LIFECYCLE_ON_RESUME"));
        WearableBridgeClient.access$1702(this.this$0, true);
        if (CamLog.DEBUG) {
            CamLog.d("NotyfyOnResumeTask.run() : X");
        }
    }
}
