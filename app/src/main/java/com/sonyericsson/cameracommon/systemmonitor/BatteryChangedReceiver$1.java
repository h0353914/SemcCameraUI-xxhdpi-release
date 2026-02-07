package com.sonyericsson.cameracommon.systemmonitor;

/* JADX INFO: loaded from: classes.dex */
class BatteryChangedReceiver$1 implements Runnable {
    final /* synthetic */ BatteryChangedReceiver this$0;
    final /* synthetic */ boolean val$isOnStartup;

    BatteryChangedReceiver$1(BatteryChangedReceiver batteryChangedReceiver, boolean z) {
        this.this$0 = batteryChangedReceiver;
        this.val$isOnStartup = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        BatteryChangedReceiver.access$000(this.this$0).onReachBatteryLimit(this.val$isOnStartup);
    }
}
