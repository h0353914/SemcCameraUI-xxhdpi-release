package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.idd.IddUtil;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$OnResumeTask implements Runnable {
    private final boolean mIsPanorama;
    final /* synthetic */ ResearchUtil this$0;

    /* synthetic */ ResearchUtil$OnResumeTask(ResearchUtil researchUtil, boolean z, ResearchUtil$1 researchUtil$1) {
        this(researchUtil, z);
    }

    private ResearchUtil$OnResumeTask(ResearchUtil researchUtil, boolean z) {
        this.this$0 = researchUtil;
        this.mIsPanorama = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mIsPanorama) {
            ResearchUtil.access$802(this.this$0, null);
            ResearchUtil.access$902(this.this$0, new ResearchUtil$PanoramaInfo(null));
        } else {
            ResearchUtil.access$802(this.this$0, new ResearchUtil$CurrentUserOperationHolder(this.this$0, null));
            ResearchUtil.access$902(this.this$0, null);
        }
        IddUtil.onResume();
    }
}
