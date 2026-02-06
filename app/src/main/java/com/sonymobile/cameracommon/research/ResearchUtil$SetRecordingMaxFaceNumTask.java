package com.sonymobile.cameracommon.research;

class ResearchUtil$SetRecordingMaxFaceNumTask implements Runnable {
    private final int mNum;
    final /* synthetic */ ResearchUtil this$0;

    public ResearchUtil$SetRecordingMaxFaceNumTask(ResearchUtil researchUtil, int i) {
        this.this$0 = researchUtil;
        this.mNum = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$000(this.this$0) == null) {
            ResearchUtil.access$002(this.this$0, new ResearchUtil$TemporarySettingValues());
        }
        ResearchUtil.access$000(this.this$0).updateRecordingMaxFaceNum(this.mNum);
    }
}
