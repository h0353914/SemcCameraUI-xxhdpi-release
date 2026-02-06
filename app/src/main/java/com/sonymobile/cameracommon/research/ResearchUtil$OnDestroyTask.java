package com.sonymobile.cameracommon.research;

import android.content.Context;
import com.sonymobile.cameracommon.research.idd.IddUtil;
import java.util.concurrent.Callable;

class ResearchUtil$OnDestroyTask implements Callable<Boolean> {
    private final Context mContextInner;

    /* synthetic */ ResearchUtil$OnDestroyTask(Context context, ResearchUtil$1 researchUtil$1) {
        this(context);
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Boolean call() throws Exception {
        return call();
    }

    private ResearchUtil$OnDestroyTask(Context context) {
        this.mContextInner = context;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Boolean call() {
        IddUtil.onDestroy();
        return true;
    }
}
