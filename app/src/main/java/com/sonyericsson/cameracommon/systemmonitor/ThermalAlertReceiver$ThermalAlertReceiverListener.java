package com.sonyericsson.cameracommon.systemmonitor;

/* JADX INFO: loaded from: classes.dex */
public interface ThermalAlertReceiver$ThermalAlertReceiverListener {
    void onNotifyThermalNormal();

    void onNotifyThermalWarning(boolean z);

    void onNotifyThermalWarningExtra(boolean z);

    void onReachCriticalTemperature(boolean z);
}
