package com.sonymobile.cameracommon.research;

class ResearchUtil$SetRecordBySideSenseTask implements Runnable {
    private final boolean mRecordBySideSense;
    final /* synthetic */ ResearchUtil this$0;

    public ResearchUtil$SetRecordBySideSenseTask(ResearchUtil researchUtil, boolean z) {
        this.this$0 = researchUtil;
        this.mRecordBySideSense = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$000(this.this$0) == null) {
            ResearchUtil.access$002(this.this$0, new ResearchUtil$TemporarySettingValues());
        }
        ResearchUtil.access$000(this.this$0).updateRecordBySideSense(this.mRecordBySideSense);
    }
}
