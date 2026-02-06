package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.idd.IddUtil;

class ResearchUtil$SendEventInternalModeChangeTask implements Runnable {
    private final String mCurrentMode;
    private final String mMethod;
    private final String mTargetMode;

    /* synthetic */ ResearchUtil$SendEventInternalModeChangeTask(String str, String str2, String str3, ResearchUtil$1 researchUtil$1) {
        this(str, str2, str3);
    }

    private ResearchUtil$SendEventInternalModeChangeTask(String str, String str2, String str3) {
        this.mCurrentMode = str;
        this.mTargetMode = str2;
        this.mMethod = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        IddUtil.sendEventInternalModeChange(this.mCurrentMode, this.mTargetMode, this.mMethod);
    }
}
