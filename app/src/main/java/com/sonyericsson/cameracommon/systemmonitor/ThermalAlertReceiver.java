package com.sonyericsson.cameracommon.systemmonitor;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import com.sonyericsson.android.camera.debug.DebugParameterUtils;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.psm.sysmonservice.ISysmonService;

public class ThermalAlertReceiver extends BroadcastReceiver {
    private static final String ACTION_CAMERA_COOLED_DOWN_NORMAL = "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL";
    private static final String ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN = "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN";
    private static final String ACTION_CAMERA_HEATED_OVER_CRITICAL = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL";
    private static final String ACTION_CAMERA_HEATED_OVER_LOW_TEMP_BURN = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN";
    private static final String ACTION_CAMERA_LOW_TEMP_BURN_TIMER_RESET = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET";
    private static final String ACTION_CAMERA_LOW_TEMP_BURN_TIMER_SET = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET";
    private static final int CAMERA_CRITICAL = 604;
    private static final int CAMERA_HEATED_CLOSE_TO_SHUTDOWN = 620;
    private static final String CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC";
    private static final int CAMERA_LOW_TEMP_BURN = 610;
    private static final int CAMERA_NORMAL = 600;
    private static final int CAMERA_WARNING = 603;
    private static final int CAMERA_WARNING_EXTRA = 601;
    private static final int INVALID_LOW_TEMP_BURN_TIMEOUT_DURATION = -1;
    private static final String KEY_LOW_TEMP_BURN_TIMER_DURATION_SEC = "com.sonyericsson.psm.extra.TIMEOUT_SEC";
    private static final int LOW_TEMP_BURN_TIMER_LIMIT_MILLIS = 1800000;
    private static final String SYSMON_SERVICE = "com.sonyericsson.psm.sysmonservice";
    private static final String SYSMON_SERVICE_CLASS = "com.sonyericsson.psm.sysmonservice.SysmonService";
    public static final String TAG = "ThermalAlertReceiver";
    private static final int VARIABLE_LOW_TEMP_BURN_TIMEOUT_DURATION_NOT_SUPPORTED = 0;
    private final Activity mActivity;
    private boolean mIsBindSysmonService;
    private final ThermalAlertReceiver$ThermalAlertReceiverListener mListener;
    private ISysmonService mSysmonService;
    private boolean mIsAlreadyHighTemperature = false;
    private boolean mIsWarningState = false;
    private boolean mIsWarningExtraState = false;
    private boolean mIsWarningReceived = false;
    private final ServiceConnection mServiceConnectionSysmon = new ThermalAlertReceiver$ServiceConnectionSysmon(this);
    private final ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper mLowTempBurnTimerFixedDuration = new ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper(this, null);
    private final ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper mLowTempBurnTimerVariableDuration = new ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper(this, null);

    static /* synthetic */ ISysmonService access$000(ThermalAlertReceiver thermalAlertReceiver) {
        return thermalAlertReceiver.mSysmonService;
    }

    static /* synthetic */ ISysmonService access$002(ThermalAlertReceiver thermalAlertReceiver, ISysmonService iSysmonService) {
        thermalAlertReceiver.mSysmonService = iSysmonService;
        return iSysmonService;
    }

    static /* synthetic */ void access$100(ThermalAlertReceiver thermalAlertReceiver, int i, String str) {
        thermalAlertReceiver.checkStartupStatus(i, str);
    }

    static /* synthetic */ void access$200(ThermalAlertReceiver thermalAlertReceiver, int i, int i2) {
        thermalAlertReceiver.checkLowTempBurnTimeoutTimerDuration(i, i2);
    }

    static /* synthetic */ boolean access$502(ThermalAlertReceiver thermalAlertReceiver, boolean z) {
        thermalAlertReceiver.mIsAlreadyHighTemperature = z;
        return z;
    }

    static /* synthetic */ ThermalAlertReceiver$ThermalAlertReceiverListener access$600(ThermalAlertReceiver thermalAlertReceiver) {
        return thermalAlertReceiver.mListener;
    }

    public boolean isAlreadyHighTemperature() {
        return this.mIsAlreadyHighTemperature;
    }

    public boolean isWarningState() {
        return this.mIsWarningState;
    }

    public boolean isThermalWarningReceived() {
        return this.mIsWarningReceived;
    }

    public boolean isWarningExtraState() {
        return this.mIsWarningState | this.mIsWarningExtraState;
    }

    private void checkStartupStatus(int i, String str) {
        this.mIsAlreadyHighTemperature = false;
        switch (i) {
            case 600:
                if (CamLog.VERBOSE) {
                    CamLog.d("Startup status of service[" + str + "] is NORMAL.");
                }
                changeToNormalState();
                break;
            case 601:
                if (CamLog.VERBOSE) {
                    CamLog.d("Startup status of service[" + str + "] is CAMERA_WARNING_EXTRA.");
                }
                changeToWarningExtraState(true);
                break;
            case 603:
                if (CamLog.VERBOSE) {
                    CamLog.d("Startup status of service[" + str + "] is WARNING.");
                }
                this.mIsAlreadyHighTemperature = true;
                finishOnStartup();
                break;
            case 604:
                if (CamLog.VERBOSE) {
                    CamLog.d("Startup status of service[" + str + "] is CRITICAL.");
                }
                this.mIsAlreadyHighTemperature = true;
                finishOnStartup();
                break;
            case 620:
                if (CamLog.VERBOSE) {
                    CamLog.d("Startup status of service[" + str + "] is CLOSE_TO_SHUTDOWN.");
                }
                changeToWarningState(true);
                break;
            default:
                if (CamLog.VERBOSE) {
                    CamLog.d("Startup status of service[" + str + "] is unknown.");
                }
                break;
        }
    }

    private void checkLowTempBurnTimeoutTimerDuration(int i, int i2) {
        if (i2 == 0) {
            if (i == 610) {
                this.mLowTempBurnTimerFixedDuration.requestTimeMillis(1800000L);
            }
        } else if (i2 != -1) {
            if (CamLog.VERBOSE) {
                CamLog.d("Variable duration LTB timer : duration Sec=" + i2);
            }
            this.mLowTempBurnTimerVariableDuration.requestTimeMillis(i2 * 1000);
        }
    }

    public ThermalAlertReceiver(Activity activity, ThermalAlertReceiver$ThermalAlertReceiverListener thermalAlertReceiver$ThermalAlertReceiverListener) {
        this.mActivity = activity;
        this.mListener = thermalAlertReceiver$ThermalAlertReceiverListener;
    }

    public void onCreate() {
        IntentFilter intentFilter = new IntentFilter();
        if (!DebugParameterUtils.INSTANCE.isLowPowerModeDisabled(this.mActivity)) {
            intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL");
            intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC");
            intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN");
            intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL");
            intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN");
            intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET");
            intentFilter.addAction("com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET");
        }
        this.mActivity.registerReceiver(this, intentFilter);
        this.mIsWarningExtraState = false;
    }

    public void onDestroy() {
        this.mActivity.unregisterReceiver(this);
    }

    public void onResume() {
        this.mIsAlreadyHighTemperature = false;
        this.mIsWarningExtraState = false;
        Intent intent = new Intent();
        intent.setClassName("com.sonyericsson.psm.sysmonservice", "com.sonyericsson.psm.sysmonservice.SysmonService");
        PerfLog.BIND_SYSMON_SERVICE.begin();
        this.mIsBindSysmonService = this.mActivity.bindService(intent, this.mServiceConnectionSysmon, 0);
        PerfLog.BIND_SYSMON_SERVICE.end();
        if (this.mIsBindSysmonService) {
            if (CamLog.VERBOSE) {
                CamLog.d("bind sysmon service");
                return;
            }
            return;
        }
        this.mActivity.unbindService(this.mServiceConnectionSysmon);
    }

    public void onPause() {
        this.mIsAlreadyHighTemperature = false;
        if (this.mIsBindSysmonService) {
            this.mIsBindSysmonService = false;
            this.mActivity.unbindService(this.mServiceConnectionSysmon);
        }
        this.mLowTempBurnTimerFixedDuration.cancel();
        this.mLowTempBurnTimerVariableDuration.cancel();
        this.mIsWarningReceived = false;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int i;
        if (!this.mIsBindSysmonService) {
            if (CamLog.VERBOSE) {
                CamLog.d("Service is already unbinded");
                return;
            }
            return;
        }
        if (this.mIsAlreadyHighTemperature) {
            if (CamLog.VERBOSE) {
                CamLog.d("Temperature is already high");
                return;
            }
            return;
        }
        String action = intent.getAction();
        if ("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL".equals(action)) {
            this.mLowTempBurnTimerFixedDuration.cancel();
            this.mLowTempBurnTimerVariableDuration.cancel();
            this.mIsAlreadyHighTemperature = true;
            this.mListener.onReachCriticalTemperature(false);
            return;
        }
        if ("com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL".equals(action)) {
            this.mLowTempBurnTimerFixedDuration.cancel();
            changeToNormalState();
            return;
        }
        if ("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN".equals(action)) {
            this.mLowTempBurnTimerFixedDuration.requestTimeMillis(1800000L);
            return;
        }
        if ("com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN".equals(action)) {
            changeToWarningState(false);
            return;
        }
        if ("com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET".equals(action)) {
            Bundle extras = intent.getExtras();
            if (extras == null || (i = extras.getInt("com.sonyericsson.psm.extra.TIMEOUT_SEC", -1)) == -1) {
                return;
            }
            this.mLowTempBurnTimerVariableDuration.requestTimeMillis(i * 1000);
            return;
        }
        if ("com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET".equals(action)) {
            this.mLowTempBurnTimerVariableDuration.cancel();
        } else if ("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC".equals(action)) {
            changeToWarningExtraState(false);
        }
    }

    private void finishOnStartup() {
        this.mListener.onReachCriticalTemperature(true);
    }

    private void changeToNormalState() {
        this.mIsWarningState = false;
        this.mListener.onNotifyThermalNormal();
    }

    private void changeToWarningState(boolean z) {
        this.mIsWarningState = true;
        this.mIsWarningReceived = true;
        this.mListener.onNotifyThermalWarning(z);
        this.mListener.onNotifyThermalWarningExtra(z);
    }

    private void changeToWarningExtraState(boolean z) {
        this.mIsWarningExtraState = true;
        this.mListener.onNotifyThermalWarningExtra(z);
    }
}
