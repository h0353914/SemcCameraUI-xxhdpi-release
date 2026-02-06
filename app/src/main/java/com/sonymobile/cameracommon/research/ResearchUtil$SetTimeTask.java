package com.sonymobile.cameracommon.research;

class ResearchUtil$SetTimeTask implements Runnable {
    private final boolean mIsStart;
    private final long mTime;
    final /* synthetic */ ResearchUtil this$0;

    public ResearchUtil$SetTimeTask(ResearchUtil researchUtil, boolean z, long j) {
        this.this$0 = researchUtil;
        this.mIsStart = z;
        this.mTime = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$400(this.this$0) == null) {
            ResearchUtil.access$402(this.this$0, new ResearchUtil$AfDoneKeepingTimeHolder(null));
        }
        if (this.mIsStart) {
            ResearchUtil.access$400(this.this$0).updateTimeAfDone(this.mTime);
        } else {
            ResearchUtil.access$400(this.this$0).updateTimeCapture(this.mTime);
        }
    }
}
