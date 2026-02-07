package com.sonymobile.cameracommon.research;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$SetSideSensePositionTask implements Runnable {
    private final int mX;
    private final int mY;
    final /* synthetic */ ResearchUtil this$0;

    public ResearchUtil$SetSideSensePositionTask(ResearchUtil researchUtil, int i, int i2) {
        this.this$0 = researchUtil;
        this.mX = i;
        this.mY = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$000(this.this$0) == null) {
            ResearchUtil.access$002(this.this$0, new ResearchUtil$TemporarySettingValues());
        }
        ResearchUtil.access$000(this.this$0).updateSideSensePosition(this.mX, this.mY);
    }
}
