package com.sonymobile.cameracommon.research;

class ResearchUtil$SetZoomRatioTask implements Runnable {
    private final float mZoomRatio;
    final /* synthetic */ ResearchUtil this$0;

    public ResearchUtil$SetZoomRatioTask(ResearchUtil researchUtil, float f) {
        this.this$0 = researchUtil;
        this.mZoomRatio = f;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$000(this.this$0) == null) {
            ResearchUtil.access$002(this.this$0, new ResearchUtil$TemporarySettingValues());
        }
        ResearchUtil.access$000(this.this$0).updateZoomRatio(this.mZoomRatio);
    }
}
