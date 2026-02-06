package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.idd.IddUtil;

class ResearchUtil$SendPerformanceDataTask implements Runnable {
    private final String mBatteryLevel;
    private final boolean mIsHeated;
    private final String mKey;
    private final long mMillis;

    /* synthetic */ ResearchUtil$SendPerformanceDataTask(String str, long j, boolean z, String str2, ResearchUtil$1 researchUtil$1) {
        this(str, j, z, str2);
    }

    private ResearchUtil$SendPerformanceDataTask(String str, long j, boolean z, String str2) {
        this.mKey = str;
        this.mMillis = j;
        this.mIsHeated = z;
        this.mBatteryLevel = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        IddUtil.sendPerformanceData(this.mKey, this.mMillis, this.mIsHeated, this.mBatteryLevel);
    }
}
