package com.sonymobile.cameracommon.research;

class ResearchUtil$ClearFaceNumTask implements Runnable {
    final /* synthetic */ ResearchUtil this$0;

    private ResearchUtil$ClearFaceNumTask(ResearchUtil researchUtil) {
        this.this$0 = researchUtil;
    }

    /* synthetic */ ResearchUtil$ClearFaceNumTask(ResearchUtil researchUtil, ResearchUtil$1 researchUtil$1) {
        this(researchUtil);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$000(this.this$0) == null) {
            ResearchUtil.access$002(this.this$0, new ResearchUtil$TemporarySettingValues());
        }
        ResearchUtil.access$000(this.this$0).clearFaceNum();
    }
}
