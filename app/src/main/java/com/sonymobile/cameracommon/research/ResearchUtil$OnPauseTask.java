package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.idd.IddUtil;

class ResearchUtil$OnPauseTask implements Runnable {
    private final boolean mIsSameActivity;
    final /* synthetic */ ResearchUtil this$0;

    /* synthetic */ ResearchUtil$OnPauseTask(ResearchUtil researchUtil, boolean z, ResearchUtil$1 researchUtil$1) {
        this(researchUtil, z);
    }

    private ResearchUtil$OnPauseTask(ResearchUtil researchUtil, boolean z) {
        this.this$0 = researchUtil;
        this.mIsSameActivity = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        ResearchUtil.access$1302(this.this$0, false);
        if (ResearchUtil.access$800(this.this$0) != null) {
            ResearchUtil.access$800(this.this$0).clear();
        }
        if (ResearchUtil.access$900(this.this$0) != null) {
            ResearchUtil$PanoramaInfo.access$1400(ResearchUtil.access$900(this.this$0));
        }
        IddUtil.onPause(this.mIsSameActivity);
        this.this$0.clearTemporarySettingValues();
    }
}
