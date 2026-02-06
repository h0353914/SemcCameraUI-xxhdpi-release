package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import android.content.IntentFilter;

class WearableBridgeClient$InitializeTask implements Runnable {
    final /* synthetic */ WearableBridgeClient this$0;

    private WearableBridgeClient$InitializeTask(WearableBridgeClient wearableBridgeClient) {
        this.this$0 = wearableBridgeClient;
    }

    /* synthetic */ WearableBridgeClient$InitializeTask(WearableBridgeClient wearableBridgeClient, WearableBridgeClient$1 wearableBridgeClient$1) {
        this(wearableBridgeClient);
    }

    @Override // java.lang.Runnable
    public void run() {
        WearableBridgeClient.access$102(this.this$0, new WearableBridgeClient$LifeCycleNotifierImpl(this.this$0, null));
        WearableBridgeClient.access$302(this.this$0, new WearableBridgeClient$PhotoStateNotifierImpl(this.this$0, null));
        WearableBridgeClient.access$502(this.this$0, new WearableBridgeClient$VideoStateNotifierImpl(null));
        WearableBridgeClient.access$702(this.this$0, new WearableBridgeClientBroadcastReceiver(WearableBridgeClient.access$800(this.this$0), WearableBridgeClient.access$900(this.this$0), WearableBridgeClient.access$1000(this.this$0), WearableBridgeClient.access$1100(this.this$0)));
        WearableBridgeClient.access$1202(this.this$0, new IntentFilter());
        WearableBridgeClient.access$1200(this.this$0).addAction("com.sonymobile.cameracommon.wearablebridge.SERVER_LIFECYCLE_ON_RESUME");
        WearableBridgeClient.access$1200(this.this$0).addAction("com.sonymobile.cameracommon.wearablebridge.SERVER_LIFECYCLE_ON_PAUSE");
        WearableBridgeClient.access$1200(this.this$0).addAction("com.sonymobile.cameracommon.wearablebridge.SERVER_PHOTO_CAPTURE_REQUESTED");
        WearableBridgeClient.access$1200(this.this$0).addAction("com.sonymobile.cameracommon.wearablebridge.SERVER_VIDEO_START_REC_REQUESTED");
        WearableBridgeClient.access$1200(this.this$0).addAction("com.sonymobile.cameracommon.wearablebridge.SERVER_VIDEO_STOP_REC_REQUESTED");
        WearableBridgeClient.access$1300(this.this$0).countDown();
    }
}
