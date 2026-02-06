package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.parameters.Event$Category;

class ResearchUtil$SendSettingsCommonKeyTask implements Runnable {
    private final String mKey;
    final /* synthetic */ ResearchUtil this$0;

    /* synthetic */ ResearchUtil$SendSettingsCommonKeyTask(ResearchUtil researchUtil, String str, ResearchUtil$1 researchUtil$1) {
        this(researchUtil, str);
    }

    private ResearchUtil$SendSettingsCommonKeyTask(ResearchUtil researchUtil, String str) {
        this.this$0 = researchUtil;
        this.mKey = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.sendEvent(Event$Category.SETTINGS_COMMON, this.mKey, (String) null);
    }
}
