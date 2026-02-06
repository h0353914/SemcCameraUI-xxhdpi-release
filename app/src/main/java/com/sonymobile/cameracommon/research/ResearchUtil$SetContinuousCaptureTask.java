package com.sonymobile.cameracommon.research;

class ResearchUtil$SetContinuousCaptureTask implements Runnable {
    final /* synthetic */ ResearchUtil this$0;

    private ResearchUtil$SetContinuousCaptureTask(ResearchUtil researchUtil) {
        this.this$0 = researchUtil;
    }

    /* synthetic */ ResearchUtil$SetContinuousCaptureTask(ResearchUtil researchUtil, ResearchUtil$1 researchUtil$1) {
        this(researchUtil);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$400(this.this$0) == null) {
            ResearchUtil.access$402(this.this$0, new ResearchUtil$AfDoneKeepingTimeHolder(null));
        }
        ResearchUtil.access$400(this.this$0).updateContinuousCapture(true);
    }
}
