package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.idd.IddUtil;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$SendEventChangedSettingTask implements Runnable {
    private final String mAfter;
    private final String mBefore;
    private final String mSetting;

    /* synthetic */ ResearchUtil$SendEventChangedSettingTask(String str, String str2, String str3, ResearchUtil$1 researchUtil$1) {
        this(str, str2, str3);
    }

    private ResearchUtil$SendEventChangedSettingTask(String str, String str2, String str3) {
        this.mSetting = str;
        this.mBefore = str2;
        this.mAfter = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        IddUtil.sendEventChangedSetting(this.mSetting, this.mBefore, this.mAfter);
    }
}
