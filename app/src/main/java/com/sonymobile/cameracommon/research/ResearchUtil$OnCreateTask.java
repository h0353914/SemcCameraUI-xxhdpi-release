package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.idd.IddUtil;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$OnCreateTask implements Runnable {
    private ResearchUtil$OnCreateTask() {
    }

    /* synthetic */ ResearchUtil$OnCreateTask(ResearchUtil$1 researchUtil$1) {
        this();
    }

    @Override // java.lang.Runnable
    public void run() {
        IddUtil.onCreate();
    }
}
