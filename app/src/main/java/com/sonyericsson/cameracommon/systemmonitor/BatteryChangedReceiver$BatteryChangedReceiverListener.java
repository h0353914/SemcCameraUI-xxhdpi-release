package com.sonyericsson.cameracommon.systemmonitor;

public interface BatteryChangedReceiver$BatteryChangedReceiverListener {
    void onBatteryLevelChanged(int i);

    void onReachBatteryLimit(boolean z);

    void onReachLowBattery();
}
