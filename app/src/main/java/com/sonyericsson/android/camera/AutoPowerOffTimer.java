package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.debug.DebugParameterUtils;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.Timer;

/* JADX INFO: loaded from: classes.dex */
public class AutoPowerOffTimer {
    private CameraActivity mActivity;
    private int mAutoPowerOffTimeOutDuration;
    private int mAutoPowerOffWarningTimeOutOffset;
    private AutoPowerOffTimer$AutoPowerOffListener mListener;
    private Timer mTimer;
    private Object mUserdata;
    private boolean mIsAutoPowerOffTimerEnabled = false;
    private final AutoPowerOffTimer$AutoPowerOffHandler mHandler = new AutoPowerOffTimer$AutoPowerOffHandler(this, null);

    static /* synthetic */ AutoPowerOffTimer$AutoPowerOffHandler access$200(AutoPowerOffTimer autoPowerOffTimer) {
        return autoPowerOffTimer.mHandler;
    }

    static /* synthetic */ void access$400(AutoPowerOffTimer autoPowerOffTimer) {
        autoPowerOffTimer.stopAutoPowerOffTimer();
    }

    static /* synthetic */ int access$500(AutoPowerOffTimer autoPowerOffTimer) {
        return autoPowerOffTimer.mAutoPowerOffWarningTimeOutOffset;
    }

    static /* synthetic */ boolean access$600(AutoPowerOffTimer autoPowerOffTimer, int i) {
        return autoPowerOffTimer.startAutoPowerOff(i);
    }

    static /* synthetic */ AutoPowerOffTimer$AutoPowerOffListener access$700(AutoPowerOffTimer autoPowerOffTimer) {
        return autoPowerOffTimer.mListener;
    }

    static /* synthetic */ Object access$800(AutoPowerOffTimer autoPowerOffTimer) {
        return autoPowerOffTimer.mUserdata;
    }

    public AutoPowerOffTimer(CameraActivity cameraActivity, AutoPowerOffTimer$AutoPowerOffListener autoPowerOffTimer$AutoPowerOffListener) {
        this.mActivity = cameraActivity;
        this.mListener = autoPowerOffTimer$AutoPowerOffListener;
    }

    public void setTimeOutDuration(int i, int i2, Object obj) {
        this.mAutoPowerOffTimeOutDuration = i;
        this.mAutoPowerOffWarningTimeOutOffset = i2;
        this.mUserdata = obj;
    }

    public final void enableAutoPowerOffTimer() {
        if (CamLog.VERBOSE) {
            CamLog.d("enableAutoPowerOffTimer: ");
        }
        this.mIsAutoPowerOffTimerEnabled = true;
        startAutoPowerOffTimer();
    }

    public final void disableAutoPowerOffTimer() {
        if (CamLog.VERBOSE) {
            CamLog.d("disableAutoPowerOffTimer: ");
        }
        this.mHandler.removeAllMessages();
        stopAutoPowerOffTimer();
        this.mIsAutoPowerOffTimerEnabled = false;
    }

    public final synchronized void restartAutoPowerOffTimer() {
        this.mHandler.removeAllMessages();
        stopAutoPowerOffTimer();
        startAutoPowerOffTimer();
    }

    private final void startAutoPowerOffTimer() {
        if (!DebugParameterUtils.INSTANCE.isAutoPowerOffDisabled(this.mActivity) && this.mIsAutoPowerOffTimerEnabled) {
            if (this.mAutoPowerOffTimeOutDuration < this.mAutoPowerOffWarningTimeOutOffset) {
                startAutoPowerOff(this.mAutoPowerOffTimeOutDuration);
            } else {
                startAutoPowerOffWarning(this.mAutoPowerOffTimeOutDuration - this.mAutoPowerOffWarningTimeOutOffset);
            }
        }
    }

    private final synchronized void stopAutoPowerOffTimer() {
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer.purge();
            this.mTimer = null;
        }
    }

    private synchronized boolean startAutoPowerOffWarning(int i) {
        if (this.mActivity.isInLockTaskMode()) {
            return false;
        }
        if (this.mTimer != null) {
            return false;
        }
        this.mTimer = new Timer(true);
        this.mTimer.schedule(new AutoPowerOffTimer$AutoPowerOffWarningTask(this, null), i);
        return true;
    }

    private synchronized boolean startAutoPowerOff(int i) {
        if (this.mActivity.isInLockTaskMode()) {
            return false;
        }
        if (this.mTimer != null) {
            return false;
        }
        this.mTimer = new Timer(true);
        this.mTimer.schedule(new AutoPowerOffTimer$AutoPowerOffTask(this, null), i);
        return true;
    }

    public Object getUserdata() {
        return this.mUserdata;
    }
}
