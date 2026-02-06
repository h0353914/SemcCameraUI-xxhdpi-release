package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;

class ResearchUtil$SetCaptureTriggerTask implements Runnable {
    private final Event$CaptureTrigger mCaptureTrigger;
    final /* synthetic */ ResearchUtil this$0;

    public ResearchUtil$SetCaptureTriggerTask(ResearchUtil researchUtil, Event$CaptureTrigger event$CaptureTrigger) {
        this.this$0 = researchUtil;
        this.mCaptureTrigger = event$CaptureTrigger;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$000(this.this$0) == null) {
            ResearchUtil.access$002(this.this$0, new ResearchUtil$TemporarySettingValues());
        }
        ResearchUtil.access$000(this.this$0).updateCaptureTrigger(this.mCaptureTrigger);
    }
}
