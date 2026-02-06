package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.idd.IddUtil;
import com.sonymobile.cameracommon.research.parameters.Event$Category;

class ResearchUtil$SendEventAddonModeChangeTask implements Runnable {
    private final String mAction;
    private final Event$Category mCategory;
    private final String mLabel;
    private final String mMethod;

    /* synthetic */ ResearchUtil$SendEventAddonModeChangeTask(Event$Category event$Category, String str, String str2, String str3, ResearchUtil$1 researchUtil$1) {
        this(event$Category, str, str2, str3);
    }

    private ResearchUtil$SendEventAddonModeChangeTask(Event$Category event$Category, String str, String str2, String str3) {
        this.mCategory = event$Category;
        this.mAction = str;
        this.mLabel = str2;
        this.mMethod = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        IddUtil.sendEventAddonModeChange(this.mCategory, this.mAction, this.mLabel, this.mMethod);
    }
}
