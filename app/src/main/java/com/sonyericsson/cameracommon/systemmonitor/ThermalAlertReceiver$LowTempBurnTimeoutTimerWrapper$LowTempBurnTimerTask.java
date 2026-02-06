package com.sonyericsson.cameracommon.systemmonitor;

import android.os.Handler;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.TimerTask;

class ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask extends TimerTask {
    private final Handler mHandler;
    final /* synthetic */ ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper this$1;

    private ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask(ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper thermalAlertReceiver$LowTempBurnTimeoutTimerWrapper) {
        this.this$1 = thermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;
        this.mHandler = new Handler();
    }

    /* synthetic */ ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask(ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper thermalAlertReceiver$LowTempBurnTimeoutTimerWrapper, ThermalAlertReceiver$1 thermalAlertReceiver$1) {
        this(thermalAlertReceiver$LowTempBurnTimeoutTimerWrapper);
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (CamLog.VERBOSE) {
            CamLog.d("LowTempBurn timer expired.");
        }
        cancel();
        this.mHandler.post(new ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask$1(this));
    }
}
