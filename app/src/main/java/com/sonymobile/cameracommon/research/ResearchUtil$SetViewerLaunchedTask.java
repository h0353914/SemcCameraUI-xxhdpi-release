package com.sonymobile.cameracommon.research;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$SetViewerLaunchedTask implements Runnable {
    final /* synthetic */ ResearchUtil this$0;

    private ResearchUtil$SetViewerLaunchedTask(ResearchUtil researchUtil) {
        this.this$0 = researchUtil;
    }

    /* synthetic */ ResearchUtil$SetViewerLaunchedTask(ResearchUtil researchUtil, ResearchUtil$1 researchUtil$1) {
        this(researchUtil);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$800(this.this$0) != null) {
            ResearchUtil.access$800(this.this$0).setViewerLaunched();
        }
        if (ResearchUtil.access$900(this.this$0) != null) {
            ResearchUtil.access$900(this.this$0).setViewerLaunched();
        }
    }
}
