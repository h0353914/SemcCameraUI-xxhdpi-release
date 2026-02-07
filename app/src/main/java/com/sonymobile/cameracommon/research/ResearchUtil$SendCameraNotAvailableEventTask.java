package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.parameters.Event$CameraNotAvailable;
import com.sonymobile.cameracommon.research.parameters.Event$Category;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$SendCameraNotAvailableEventTask implements Runnable {
    final /* synthetic */ ResearchUtil this$0;

    private ResearchUtil$SendCameraNotAvailableEventTask(ResearchUtil researchUtil) {
        this.this$0 = researchUtil;
    }

    /* synthetic */ ResearchUtil$SendCameraNotAvailableEventTask(ResearchUtil researchUtil, ResearchUtil$1 researchUtil$1) {
        this(researchUtil);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.sendEvent(Event$Category.CAMERA_NOT_AVAILABLE, Event$CameraNotAvailable.getType(ResearchUtil.access$2000(this.this$0)).toString(), (String) null);
        ResearchUtil.access$2002(this.this$0, false);
    }
}
