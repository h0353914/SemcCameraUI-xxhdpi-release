package com.sonyericsson.android.camera;

import com.sonyericsson.cameracommon.utility.MeasurePerformance$PerformanceIds;

public enum CameraActivity$LifeCycleIds {
    ON_CREATE(MeasurePerformance$PerformanceIds.ON_CREATE, "onCreate()"),
    ON_START(MeasurePerformance$PerformanceIds.ON_START, "onStart()"),
    ON_RESTART(MeasurePerformance$PerformanceIds.ON_RESTART, "onRestart()"),
    ON_RESUME(MeasurePerformance$PerformanceIds.ON_RESUME, "onResume()"),
    ON_PAUSE(MeasurePerformance$PerformanceIds.ON_PAUSE, "onPause()"),
    ON_STOP(MeasurePerformance$PerformanceIds.ON_STOP, "onStop()"),
    ON_DESTROY(MeasurePerformance$PerformanceIds.ON_DESTROY, "onDestroy()");

    private final String mLog;
    private final MeasurePerformance$PerformanceIds mPerformanceIds;

    static /* synthetic */ MeasurePerformance$PerformanceIds access$4600(CameraActivity$LifeCycleIds cameraActivity$LifeCycleIds) {
        return cameraActivity$LifeCycleIds.mPerformanceIds;
    }

    CameraActivity$LifeCycleIds(MeasurePerformance$PerformanceIds measurePerformance$PerformanceIds, String str) {
        this.mPerformanceIds = measurePerformance$PerformanceIds;
        this.mLog = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mLog;
    }
}
