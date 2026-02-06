package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import com.sonyericsson.android.camera.util.CamLog;

class WearableBridgeClient$LifeCycleNotifierImpl implements NotifyWearableInterface$LifeCycleNotifier {
    final /* synthetic */ WearableBridgeClient this$0;

    private WearableBridgeClient$LifeCycleNotifierImpl(WearableBridgeClient wearableBridgeClient) {
        this.this$0 = wearableBridgeClient;
    }

    /* synthetic */ WearableBridgeClient$LifeCycleNotifierImpl(WearableBridgeClient wearableBridgeClient, WearableBridgeClient$1 wearableBridgeClient$1) {
        this(wearableBridgeClient);
    }

    @Override // com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface$LifeCycleNotifier
    public void onResume() {
        if (CamLog.DEBUG) {
            CamLog.d("onResume() : E");
        }
        WearableBridgeClient.access$1500(this.this$0).execute(new WearableBridgeClient$NotifyOnResumeTask(this.this$0, null));
        if (CamLog.DEBUG) {
            CamLog.d("onResume() : X");
        }
    }

    @Override // com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface$LifeCycleNotifier
    public void onPause() {
        if (CamLog.DEBUG) {
            CamLog.d("onPause() : E");
        }
        WearableBridgeClient.access$1500(this.this$0).execute(new WearableBridgeClient$NotifyOnPauseTask(this.this$0, null));
        if (CamLog.DEBUG) {
            CamLog.d("onPause() : X");
        }
    }
}
