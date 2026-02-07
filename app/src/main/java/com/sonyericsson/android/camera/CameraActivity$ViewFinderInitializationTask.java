package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.view.ViewFinderImpl;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$ViewFinderInitializationTask implements Runnable {
    private final ViewFinderImpl mViewFinderImpl;

    /* synthetic */ CameraActivity$ViewFinderInitializationTask(ViewFinderImpl viewFinderImpl, CameraActivity$1 cameraActivity$1) {
        this(viewFinderImpl);
    }

    private CameraActivity$ViewFinderInitializationTask(ViewFinderImpl viewFinderImpl) {
        this.mViewFinderImpl = viewFinderImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        PerfLog.TASK_VIEW_FINDER_INITIALIZATION.begin();
        this.mViewFinderImpl.initialize();
        this.mViewFinderImpl.setContentView();
        PerfLog.TASK_VIEW_FINDER_INITIALIZATION.end();
    }
}
