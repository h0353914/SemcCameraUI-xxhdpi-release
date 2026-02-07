package com.sonyericsson.cameracommon.systemmonitor;

/* JADX INFO: loaded from: classes.dex */
public interface BatteryChangedReceiver$BatteryChangedReceiverListener {
    void onBatteryLevelChanged(int i);

    void onReachBatteryLimit(boolean z);

    void onReachLowBattery();
}
