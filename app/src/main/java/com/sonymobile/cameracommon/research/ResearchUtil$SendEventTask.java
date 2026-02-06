package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.idd.IddUtil;
import com.sonymobile.cameracommon.research.parameters.Event$Category;

class ResearchUtil$SendEventTask implements Runnable {
    private final String mAction;
    private final Event$Category mCategory;
    private final String mLabel;
    private final long mValue;

    /* synthetic */ ResearchUtil$SendEventTask(Event$Category event$Category, String str, String str2, long j, ResearchUtil$1 researchUtil$1) {
        this(event$Category, str, str2, j);
    }

    private ResearchUtil$SendEventTask(Event$Category event$Category, String str, String str2, long j) {
        this.mCategory = event$Category;
        this.mAction = str;
        this.mLabel = str2;
        this.mValue = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        IddUtil.sendEvent(this.mCategory, this.mAction, this.mLabel, this.mValue);
    }
}
