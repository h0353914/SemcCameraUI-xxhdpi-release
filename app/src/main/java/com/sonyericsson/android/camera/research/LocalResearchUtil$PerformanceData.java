package com.sonyericsson.android.camera.research;

import android.os.SystemClock;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.ResearchUtil;

class LocalResearchUtil$PerformanceData {
    private final LocalResearchUtil$MeasurementKey mKey;
    final /* synthetic */ LocalResearchUtil this$0;
    private long mStartInMillis = 0;
    private long mStopInMillis = 0;
    private boolean mIsValid = false;

    static /* synthetic */ boolean access$600(LocalResearchUtil$PerformanceData localResearchUtil$PerformanceData) {
        return localResearchUtil$PerformanceData.isValid();
    }

    public LocalResearchUtil$PerformanceData(LocalResearchUtil localResearchUtil, LocalResearchUtil$MeasurementKey localResearchUtil$MeasurementKey) {
        this.this$0 = localResearchUtil;
        this.mKey = localResearchUtil$MeasurementKey;
    }

    public void start() {
        this.mStartInMillis = SystemClock.uptimeMillis();
    }

    public void stop() {
        this.mStopInMillis = SystemClock.uptimeMillis();
        switch (this.mKey) {
            case LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:
            case LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:
            case LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:
            case LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:
            case LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:
            case LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:
            case LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:
            case LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:
                ResearchUtil.getInstance().sendPerformanceData(this.mKey.toString(), this.mStopInMillis - this.mStartInMillis, LocalResearchUtil.access$400(this.this$0), LocalResearchUtil.access$500(this.this$0));
                if (CamLog.DEBUG) {
                    CamLog.d(this.mKey.toString() + ": " + (this.mStopInMillis - this.mStartInMillis) + ", isHeated: " + LocalResearchUtil.access$400(this.this$0) + ", BatteryLevel: " + LocalResearchUtil.access$500(this.this$0));
                }
                break;
            case VIDEO_RECORDING_STOP_READY_FOR_USE:
            case CLOSE_INITIAL_RESPONSE:
            case CLOSE_READY_FOR_USE:
            case SHOT_TO_SHOT_DELAY:
                ResearchUtil.getInstance().sendPerformanceData(this.mKey.toString(), this.mStopInMillis - this.mStartInMillis, LocalResearchUtil.access$400(this.this$0));
                if (CamLog.DEBUG) {
                    CamLog.d(this.mKey.toString() + ": " + (this.mStopInMillis - this.mStartInMillis) + ", isHeated: " + LocalResearchUtil.access$400(this.this$0));
                }
                break;
        }
    }

    public void setValid() {
        this.mIsValid = true;
    }

    public void setInvalid() {
        this.mIsValid = false;
    }

    private boolean isValid() {
        return this.mStartInMillis != 0 && this.mIsValid;
    }

    public void clear() {
        this.mStartInMillis = 0L;
        this.mStopInMillis = 0L;
        this.mIsValid = false;
    }
}
