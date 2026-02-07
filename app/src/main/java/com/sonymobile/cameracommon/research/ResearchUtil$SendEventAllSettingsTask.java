package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.idd.IddUtil;
import com.sonymobile.cameracommon.research.parameters.Event$Category;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$SendEventAllSettingsTask implements Runnable {
    private final Event$Category mCategory;
    private final Map<String, String> mEnv;
    private final Map<String, String> mSettings;

    /* synthetic */ ResearchUtil$SendEventAllSettingsTask(Event$Category event$Category, Map map, Map map2, ResearchUtil$1 researchUtil$1) {
        this(event$Category, map, map2);
    }

    private ResearchUtil$SendEventAllSettingsTask(Event$Category event$Category, Map<String, String> map, Map<String, String> map2) {
        this.mCategory = event$Category;
        this.mEnv = map;
        this.mSettings = map2;
    }

    @Override // java.lang.Runnable
    public void run() {
        IddUtil.sendEventAllSettings(this.mCategory, this.mEnv, this.mSettings);
    }
}
