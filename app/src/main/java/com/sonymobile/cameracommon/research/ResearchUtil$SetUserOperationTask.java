package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.parameters.Event$UserOperation;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel$Parameter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$SetUserOperationTask implements Runnable {
    private final List<ShootingLabel$Parameter> mParams;
    private final Map<String, String> mSettings;
    private final Event$UserOperation mUserOperation;
    final /* synthetic */ ResearchUtil this$0;

    /* synthetic */ ResearchUtil$SetUserOperationTask(ResearchUtil researchUtil, Event$UserOperation event$UserOperation, List list, Map map, ResearchUtil$1 researchUtil$1) {
        this(researchUtil, event$UserOperation, list, map);
    }

    private ResearchUtil$SetUserOperationTask(ResearchUtil researchUtil, Event$UserOperation event$UserOperation, List<ShootingLabel$Parameter> list, Map<String, String> map) {
        this.this$0 = researchUtil;
        this.mUserOperation = event$UserOperation;
        this.mParams = list;
        this.mSettings = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ResearchUtil.access$800(this.this$0) != null) {
            ResearchUtil.access$800(this.this$0).setUserOperation(this.mUserOperation, this.mParams, this.mSettings);
        }
    }
}
