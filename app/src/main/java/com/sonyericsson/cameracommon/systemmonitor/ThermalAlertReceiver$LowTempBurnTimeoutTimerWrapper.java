package com.sonyericsson.cameracommon.systemmonitor;

import com.sonyericsson.android.camera.util.CamLog;
import java.util.Timer;

class ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper {
    static final long INVALID_TIMER_TIME = -1;
    private Timer mTimer;
    private long mTimerToBeExpiredTimeMillis;
    final /* synthetic */ ThermalAlertReceiver this$0;

    /* synthetic */ ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper(ThermalAlertReceiver thermalAlertReceiver, ThermalAlertReceiver$1 thermalAlertReceiver$1) {
        this(thermalAlertReceiver);
    }

    private ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper(ThermalAlertReceiver thermalAlertReceiver) {
        this.this$0 = thermalAlertReceiver;
        this.mTimer = null;
        this.mTimerToBeExpiredTimeMillis = -1L;
    }

    private long getRemainedTimeMillis() {
        if (this.mTimerToBeExpiredTimeMillis == -1) {
            return -1L;
        }
        long jCurrentTimeMillis = this.mTimerToBeExpiredTimeMillis - System.currentTimeMillis();
        if (jCurrentTimeMillis <= 0) {
            return -1L;
        }
        return jCurrentTimeMillis;
    }

    public final synchronized void requestTimeMillis(long j) {
        if (CamLog.VERBOSE) {
            CamLog.d("Request low temp burn timer millis : " + j);
        }
        long remainedTimeMillis = getRemainedTimeMillis();
        if (remainedTimeMillis != -1 && remainedTimeMillis < j) {
            if (CamLog.VERBOSE) {
                CamLog.d("Current timer is valid.");
            }
        } else {
            cancel();
            this.mTimer = new Timer(true);
            this.mTimer.schedule(new ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask(this, null), j);
            this.mTimerToBeExpiredTimeMillis = System.currentTimeMillis() + j;
        }
    }

    public final synchronized void cancel() {
        if (CamLog.VERBOSE) {
            CamLog.d("Cancel low temp burn timer.");
        }
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer.purge();
            this.mTimer = null;
            this.mTimerToBeExpiredTimeMillis = -1L;
        } else if (CamLog.VERBOSE) {
            CamLog.d("LowTempBurnTimer is already cancel.");
        }
    }
}
