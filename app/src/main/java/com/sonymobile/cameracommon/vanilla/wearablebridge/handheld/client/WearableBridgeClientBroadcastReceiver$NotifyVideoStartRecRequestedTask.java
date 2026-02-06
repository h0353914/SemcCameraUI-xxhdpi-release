package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

class WearableBridgeClientBroadcastReceiver$NotifyVideoStartRecRequestedTask implements Runnable {
    final /* synthetic */ WearableBridgeClientBroadcastReceiver this$0;

    private WearableBridgeClientBroadcastReceiver$NotifyVideoStartRecRequestedTask(WearableBridgeClientBroadcastReceiver wearableBridgeClientBroadcastReceiver) {
        this.this$0 = wearableBridgeClientBroadcastReceiver;
    }

    /* synthetic */ WearableBridgeClientBroadcastReceiver$NotifyVideoStartRecRequestedTask(WearableBridgeClientBroadcastReceiver wearableBridgeClientBroadcastReceiver, WearableBridgeClientBroadcastReceiver$1 wearableBridgeClientBroadcastReceiver$1) {
        this(wearableBridgeClientBroadcastReceiver);
    }

    @Override // java.lang.Runnable
    public void run() {
        WearableBridgeClientBroadcastReceiver.access$700(this.this$0).onStartVideoRecRequested();
    }
}
