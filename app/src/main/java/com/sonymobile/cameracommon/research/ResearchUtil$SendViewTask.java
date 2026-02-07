package com.sonymobile.cameracommon.research;

import com.sonyericsson.android.camera.LaunchCondition$LaunchTrigger;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.idd.IddUtil;
import com.sonymobile.cameracommon.research.parameters.Screen;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$SendViewTask implements Runnable {
    private final LaunchCondition$LaunchTrigger mLaunchTrigger;
    private final Screen mScreen;
    final /* synthetic */ ResearchUtil this$0;

    /* synthetic */ ResearchUtil$SendViewTask(ResearchUtil researchUtil, LaunchCondition$LaunchTrigger launchCondition$LaunchTrigger, Screen screen, ResearchUtil$1 researchUtil$1) {
        this(researchUtil, launchCondition$LaunchTrigger, screen);
    }

    private ResearchUtil$SendViewTask(ResearchUtil researchUtil, LaunchCondition$LaunchTrigger launchCondition$LaunchTrigger, Screen screen) {
        this.this$0 = researchUtil;
        this.mLaunchTrigger = launchCondition$LaunchTrigger;
        this.mScreen = screen;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!ResearchUtil.access$1300(this.this$0) || this.mLaunchTrigger == LaunchCondition$LaunchTrigger.SAME_ACTIVITY) {
            CamLog.d("SendViewTask() LaunchTrigger:" + this.mLaunchTrigger);
            IddUtil.setLaunchedBy(this.mLaunchTrigger.toString());
            ResearchUtil$XperiaTipsLaunchTrigger.access$1800(ResearchUtil.access$1700(this.this$0), this.mLaunchTrigger);
            IddUtil.setView(this.mScreen);
            ResearchUtil.access$1302(this.this$0, true);
        }
    }
}
