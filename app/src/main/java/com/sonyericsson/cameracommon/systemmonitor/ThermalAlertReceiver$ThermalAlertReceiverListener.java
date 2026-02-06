package com.sonyericsson.cameracommon.systemmonitor;

public interface ThermalAlertReceiver$ThermalAlertReceiverListener {
    void onNotifyThermalNormal();

    void onNotifyThermalWarning(boolean z);

    void onNotifyThermalWarningExtra(boolean z);

    void onReachCriticalTemperature(boolean z);
}
