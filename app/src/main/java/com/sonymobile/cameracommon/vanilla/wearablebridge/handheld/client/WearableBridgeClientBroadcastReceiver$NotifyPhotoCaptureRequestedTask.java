package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

class WearableBridgeClientBroadcastReceiver$NotifyPhotoCaptureRequestedTask implements Runnable {
    final /* synthetic */ WearableBridgeClientBroadcastReceiver this$0;

    private WearableBridgeClientBroadcastReceiver$NotifyPhotoCaptureRequestedTask(WearableBridgeClientBroadcastReceiver wearableBridgeClientBroadcastReceiver) {
        this.this$0 = wearableBridgeClientBroadcastReceiver;
    }

    /* synthetic */ WearableBridgeClientBroadcastReceiver$NotifyPhotoCaptureRequestedTask(WearableBridgeClientBroadcastReceiver wearableBridgeClientBroadcastReceiver, WearableBridgeClientBroadcastReceiver$1 wearableBridgeClientBroadcastReceiver$1) {
        this(wearableBridgeClientBroadcastReceiver);
    }

    @Override // java.lang.Runnable
    public void run() {
        WearableBridgeClientBroadcastReceiver.access$600(this.this$0).onPhotoCaptureRequested();
    }
}
