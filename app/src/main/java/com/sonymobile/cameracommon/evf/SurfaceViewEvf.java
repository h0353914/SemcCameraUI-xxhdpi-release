package com.sonymobile.cameracommon.evf;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.Size;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public class SurfaceViewEvf implements Evf {
    private static final String TAG = "SurfaceViewEvf";
    private Size mSurfaceSize;
    private SurfaceView mSurfaceView = null;
    private Rect mEvfRect = new Rect();
    private boolean mIsSurfaceAvailable = false;
    private SurfaceViewEvf$SurfaceViewCallback mSurfaceViewCallback = new SurfaceViewEvf$SurfaceViewCallback(this, null);
    private Evf$LifeCycleCallback mLifeCycleCallback = null;

    static /* synthetic */ void access$100(SurfaceViewEvf surfaceViewEvf, boolean z) {
        surfaceViewEvf.setSurfaceAvailability(z);
    }

    static /* synthetic */ Size access$202(SurfaceViewEvf surfaceViewEvf, Size size) {
        surfaceViewEvf.mSurfaceSize = size;
        return size;
    }

    static /* synthetic */ Evf$LifeCycleCallback access$300(SurfaceViewEvf surfaceViewEvf) {
        return surfaceViewEvf.mLifeCycleCallback;
    }

    static /* synthetic */ SurfaceView access$400(SurfaceViewEvf surfaceViewEvf) {
        return surfaceViewEvf.mSurfaceView;
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public void show() {
        if (CamLog.DEBUG) {
            CamLog.d("show()");
        }
        if (this.mSurfaceView != null) {
            this.mSurfaceView.setVisibility(0);
        }
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public void hide() {
        if (CamLog.DEBUG) {
            CamLog.d("hide()");
        }
        if (this.mSurfaceView != null) {
            this.mSurfaceView.setVisibility(8);
        }
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public boolean isShown() {
        return this.mSurfaceView != null && this.mSurfaceView.getVisibility() == 0;
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public View asView() {
        if (CamLog.DEBUG) {
            CamLog.d("asView()");
        }
        return this.mSurfaceView;
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public Rect getRect() {
        this.mEvfRect.set(this.mSurfaceView.getLeft(), this.mSurfaceView.getTop(), this.mSurfaceView.getRight(), this.mSurfaceView.getBottom());
        if (CamLog.DEBUG) {
            CamLog.d("getRect() : Rect=" + this.mEvfRect.toString());
        }
        return this.mEvfRect;
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public void resize(int i, int i2) {
        if (CamLog.DEBUG) {
            CamLog.d("resize() : Width=" + i + ", Height = " + i2);
        }
        ViewGroup$LayoutParams layoutParams = this.mSurfaceView.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        this.mSurfaceView.setLayoutParams(layoutParams);
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public void setLifeCycleCallback(Evf$LifeCycleCallback evf$LifeCycleCallback) {
        this.mLifeCycleCallback = evf$LifeCycleCallback;
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public void onCreate(Context context) {
        if (CamLog.DEBUG) {
            CamLog.d("onCreate() : E");
        }
        this.mSurfaceView = new SurfaceView(context);
        this.mSurfaceView.setVisibility(4);
        this.mSurfaceView.getHolder().addCallback(this.mSurfaceViewCallback);
        if (CamLog.DEBUG) {
            CamLog.d("onCreate() : X");
        }
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public void onResume() {
        if (CamLog.DEBUG) {
            CamLog.d("onResume() : E");
        }
        if (CamLog.DEBUG) {
            CamLog.d("onResume() : X");
        }
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public void onPause() {
        if (CamLog.DEBUG) {
            CamLog.d("onPause() : E");
        }
        if (CamLog.DEBUG) {
            CamLog.d("onPause() : X");
        }
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public void onDestroy() {
        if (CamLog.DEBUG) {
            CamLog.d("onDestroy() : E");
        }
        if (this.mSurfaceView != null) {
            this.mSurfaceView.getHolder().removeCallback(this.mSurfaceViewCallback);
            this.mSurfaceView = null;
        }
        this.mLifeCycleCallback = null;
        if (CamLog.DEBUG) {
            CamLog.d("onDestroy() : X");
        }
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public synchronized void clear() {
        SurfaceHolder holder;
        Canvas canvasLockCanvas;
        if (this.mIsSurfaceAvailable && (canvasLockCanvas = (holder = this.mSurfaceView.getHolder()).lockCanvas()) != null) {
            canvasLockCanvas.drawColor(-16777216);
            holder.unlockCanvasAndPost(canvasLockCanvas);
        }
    }

    private synchronized void setSurfaceAvailability(boolean z) {
        this.mIsSurfaceAvailable = z;
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public Surface asSurface() {
        if (CamLog.DEBUG) {
            CamLog.d("asSurface()");
        }
        return this.mSurfaceView.getHolder().getSurface();
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public void setFixedSurfaceSize(int i, int i2) {
        if (CamLog.DEBUG) {
            CamLog.d("setFixedSurfaceSize(w:" + i + ", h:" + i2 + ")");
        }
        this.mSurfaceView.getHolder().setFixedSize(i, i2);
    }

    @Override // com.sonymobile.cameracommon.evf.Evf
    public Size getSurfaceSize() {
        return this.mSurfaceSize;
    }
}
