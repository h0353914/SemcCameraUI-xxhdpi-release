package com.sonyericsson.android.camera.view;

import android.graphics.Rect;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonymobile.cameracommon.evf.Evf;
import com.sonymobile.cameracommon.evf.Evf$LifeCycleCallback;

class ViewFinderImpl$EvfLifeCycleCallback implements Evf$LifeCycleCallback {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$EvfLifeCycleCallback(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$EvfLifeCycleCallback(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonymobile.cameracommon.evf.Evf$LifeCycleCallback
    public void onEvfInitialized(Evf evf, int i, int i2) {
        PerfLog.SURFACE_CREATED.transit();
        if (CamLog.DEBUG) {
            CamLog.d("onEvfInitialized() : E");
        }
        if (CamLog.VERBOSE) {
            CamLog.d("onEvfInitialized():[IN] width=" + i + ", height=" + i2);
        }
        ViewFinderImpl.access$2100(this.this$0, new Rect(0, 0, i, i2));
        if (CamLog.VERBOSE) {
            CamLog.d("onEvfInitialized():[OUT]");
        }
        if (CamLog.DEBUG) {
            CamLog.d("onEvfInitialized() : X");
        }
    }

    @Override // com.sonymobile.cameracommon.evf.Evf$LifeCycleCallback
    public void onEvfSizeChanged(Evf evf, int i, int i2) {
        PerfLog.SURFACE_CHANGED.transit();
        if (CamLog.DEBUG) {
            CamLog.d("onEvfSizeChanged() : E");
        }
        if (CamLog.VERBOSE) {
            CamLog.d("surfaceChanged():[IN] width=" + i + ", height=" + i2);
        }
        ViewFinderImpl.access$2100(this.this$0, new Rect(0, 0, i, i2));
        if (CamLog.VERBOSE) {
            CamLog.d("surfaceChanged():[OUT]");
        }
        if (CamLog.DEBUG) {
            CamLog.d("onEvfSizeChanged() : X");
        }
    }

    @Override // com.sonymobile.cameracommon.evf.Evf$LifeCycleCallback
    public void onEvfFinalized(Evf evf) {
        PerfLog.SURFACE_DESTROYED.transit();
        if (CamLog.DEBUG) {
            CamLog.d("onEvfFinalized() : E");
        }
        if (ViewFinderImpl.access$2200(this.this$0) == null) {
            CamLog.w("CameraDevice has already been released.");
            return;
        }
        ViewFinderImpl.access$2200(this.this$0).stopPreview();
        if (CamLog.DEBUG) {
            CamLog.d("onEvfFinalized() : X");
        }
    }
}
