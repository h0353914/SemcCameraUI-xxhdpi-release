package com.sonymobile.cameracommon.research;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$setAssistSelfTimerTask implements Runnable {
    private final int mAssistSelfTimer;
    final /* synthetic */ ResearchUtil this$0;

    public ResearchUtil$setAssistSelfTimerTask(ResearchUtil researchUtil, int i) {
        this.this$0 = researchUtil;
        this.mAssistSelfTimer = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$000(this.this$0) == null) {
            ResearchUtil.access$002(this.this$0, new ResearchUtil$TemporarySettingValues());
        }
        ResearchUtil.access$000(this.this$0).updateAssistSelfTimer(this.mAssistSelfTimer);
    }
}
