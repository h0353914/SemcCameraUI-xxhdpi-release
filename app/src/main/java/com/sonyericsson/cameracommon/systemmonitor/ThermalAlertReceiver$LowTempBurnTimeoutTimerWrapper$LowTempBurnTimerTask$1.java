package com.sonyericsson.cameracommon.systemmonitor;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask$1 implements Runnable {
    final /* synthetic */ ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask this$2;

    ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask$1(ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask thermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask) {
        this.this$2 = thermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.VERBOSE) {
            CamLog.d("LowTempBurnTimerTask finish");
        }
        ThermalAlertReceiver.access$502(this.this$2.this$1.this$0, true);
        ThermalAlertReceiver.access$600(this.this$2.this$1.this$0).onReachCriticalTemperature(false);
    }
}
