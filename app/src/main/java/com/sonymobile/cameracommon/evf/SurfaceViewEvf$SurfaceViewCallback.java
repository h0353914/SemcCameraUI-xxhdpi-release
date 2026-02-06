package com.sonymobile.cameracommon.evf;

import android.graphics.Rect;
import android.util.Size;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder$Callback;
import com.sonyericsson.android.camera.util.CamLog;

class SurfaceViewEvf$SurfaceViewCallback implements SurfaceHolder$Callback {
    final /* synthetic */ SurfaceViewEvf this$0;

    private SurfaceViewEvf$SurfaceViewCallback(SurfaceViewEvf surfaceViewEvf) {
        this.this$0 = surfaceViewEvf;
    }

    /* synthetic */ SurfaceViewEvf$SurfaceViewCallback(SurfaceViewEvf surfaceViewEvf, SurfaceViewEvf$1 surfaceViewEvf$1) {
        this(surfaceViewEvf);
    }

    @Override // android.view.SurfaceHolder$Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        if (CamLog.DEBUG) {
            CamLog.d("surfaceCreated(" + surfaceFrame.width() + "," + surfaceFrame.height() + ") : E");
        }
        if (verifySurfaceSize(surfaceFrame.width(), surfaceFrame.height())) {
            SurfaceViewEvf.access$100(this.this$0, true);
            SurfaceViewEvf.access$202(this.this$0, new Size(surfaceFrame.width(), surfaceFrame.height()));
            SurfaceViewEvf.access$300(this.this$0).onEvfInitialized(this.this$0, surfaceFrame.width(), surfaceFrame.height());
            if (CamLog.DEBUG) {
                CamLog.d("surfaceCreated() : X");
            }
        }
    }

    @Override // android.view.SurfaceHolder$Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (CamLog.DEBUG) {
            CamLog.d("surfaceChanged(" + i2 + "," + i3 + ") : E");
        }
        if (verifySurfaceSize(i2, i3)) {
            SurfaceViewEvf.access$202(this.this$0, new Size(i2, i3));
            SurfaceViewEvf.access$300(this.this$0).onEvfSizeChanged(this.this$0, i2, i3);
            if (CamLog.DEBUG) {
                CamLog.d("surfaceChanged() : X");
            }
        }
    }

    @Override // android.view.SurfaceHolder$Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (CamLog.DEBUG) {
            CamLog.d("surfaceDestroyed() : E");
        }
        SurfaceViewEvf.access$100(this.this$0, false);
        SurfaceViewEvf.access$202(this.this$0, null);
        SurfaceViewEvf.access$300(this.this$0).onEvfFinalized(this.this$0);
        if (CamLog.DEBUG) {
            CamLog.d("surfaceDestroyed() : X");
        }
    }

    private boolean verifySurfaceSize(int i, int i2) {
        if (SurfaceViewEvf.access$400(this.this$0) == null) {
            CamLog.w("Surface view has been destroyed");
            return false;
        }
        int iWidth = SurfaceViewEvf.access$400(this.this$0).getHolder().getSurfaceFrame().width();
        if (i != iWidth) {
            CamLog.w("Surface width is not matched: expected = " + iWidth + " actual = " + i);
            return false;
        }
        int iHeight = SurfaceViewEvf.access$400(this.this$0).getHolder().getSurfaceFrame().height();
        if (i2 == iHeight) {
            return true;
        }
        CamLog.w("Surface height is not matched: expected = " + iHeight + " actual = " + i2);
        return false;
    }
}
