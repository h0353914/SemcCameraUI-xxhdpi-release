package com.sonymobile.cameracommon.research;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$UpdateFailedToOpenCameraFlagTask implements Runnable {
    final /* synthetic */ ResearchUtil this$0;

    private ResearchUtil$UpdateFailedToOpenCameraFlagTask(ResearchUtil researchUtil) {
        this.this$0 = researchUtil;
    }

    /* synthetic */ ResearchUtil$UpdateFailedToOpenCameraFlagTask(ResearchUtil researchUtil, ResearchUtil$1 researchUtil$1) {
        this(researchUtil);
    }

    @Override // java.lang.Runnable
    public void run() {
        ResearchUtil.access$2002(this.this$0, true);
    }
}
