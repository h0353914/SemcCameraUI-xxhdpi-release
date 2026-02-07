package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

/* JADX INFO: loaded from: classes.dex */
class WearableBridgeClientBroadcastReceiver$NotifyOnResumeTask implements Runnable {
    final /* synthetic */ WearableBridgeClientBroadcastReceiver this$0;

    private WearableBridgeClientBroadcastReceiver$NotifyOnResumeTask(WearableBridgeClientBroadcastReceiver wearableBridgeClientBroadcastReceiver) {
        this.this$0 = wearableBridgeClientBroadcastReceiver;
    }

    /* synthetic */ WearableBridgeClientBroadcastReceiver$NotifyOnResumeTask(WearableBridgeClientBroadcastReceiver wearableBridgeClientBroadcastReceiver, WearableBridgeClientBroadcastReceiver$1 wearableBridgeClientBroadcastReceiver$1) {
        this(wearableBridgeClientBroadcastReceiver);
    }

    @Override // java.lang.Runnable
    public void run() {
        WearableBridgeClientBroadcastReceiver.access$500(this.this$0).onResume();
    }
}
