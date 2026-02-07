package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class WearableBridgeClient$NotifyOnPauseTask implements Runnable {
    final /* synthetic */ WearableBridgeClient this$0;

    private WearableBridgeClient$NotifyOnPauseTask(WearableBridgeClient wearableBridgeClient) {
        this.this$0 = wearableBridgeClient;
    }

    /* synthetic */ WearableBridgeClient$NotifyOnPauseTask(WearableBridgeClient wearableBridgeClient, WearableBridgeClient$1 wearableBridgeClient$1) {
        this(wearableBridgeClient);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("NotifyOnPauseTask.run() : E");
        }
        if (!WearableBridgeClient.access$1700(this.this$0)) {
            if (CamLog.DEBUG) {
                CamLog.d("Already paused.");
                return;
            }
            return;
        }
        WearableBridgeClient.access$1702(this.this$0, false);
        WearableBridgeClient.access$1800(this.this$0).sendBroadcast(WearableBridgeClient.access$1900(this.this$0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_LIFECYCLE_ON_PAUSE"));
        WearableBridgeClient.access$1800(this.this$0).unregisterReceiver(WearableBridgeClient.access$700(this.this$0));
        if (CamLog.DEBUG) {
            CamLog.d("NotifyOnPauseTask.run() : X");
        }
    }
}
