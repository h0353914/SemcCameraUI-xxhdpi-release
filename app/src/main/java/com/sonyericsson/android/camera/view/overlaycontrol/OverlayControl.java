package com.sonyericsson.android.camera.view.overlaycontrol;

import com.sonyericsson.android.camera.util.CamLog;

public abstract class OverlayControl {
    private boolean mIsAllowedToShow;
    private boolean mIsEnabled;
    private OverlayControl$StateListener mStateListener;

    protected abstract void onOrientationChanged(int i);

    protected abstract void onVisibilityUpdated();

    public abstract void refresh();

    public abstract void release();

    public OverlayControl(OverlayControl$StateListener overlayControl$StateListener) {
        if (CamLog.DEBUG) {
            CamLog.d("init");
        }
        this.mStateListener = overlayControl$StateListener;
    }

    public void enable() {
        if (CamLog.DEBUG) {
            CamLog.d("Invoked");
        }
        boolean zIsVisible = isVisible();
        this.mIsEnabled = true;
        if (zIsVisible != isVisible()) {
            onVisibilityUpdated();
        }
    }

    public void disable() {
        if (CamLog.DEBUG) {
            CamLog.d("Invoked");
        }
        boolean zIsVisible = isVisible();
        this.mIsEnabled = false;
        if (zIsVisible != isVisible()) {
            onVisibilityUpdated();
        }
    }

    public void show() {
        if (CamLog.DEBUG) {
            CamLog.d("Invoked");
        }
        boolean zIsVisible = isVisible();
        this.mIsAllowedToShow = true;
        if (zIsVisible != isVisible()) {
            onVisibilityUpdated();
        }
    }

    public void hide() {
        if (CamLog.DEBUG) {
            CamLog.d("Invoked");
        }
        boolean zIsVisible = isVisible();
        this.mIsAllowedToShow = false;
        if (zIsVisible != isVisible()) {
            onVisibilityUpdated();
        }
    }

    public void setOrientation(int i) {
        onOrientationChanged(i);
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public boolean isVisible() {
        return this.mIsEnabled && this.mIsAllowedToShow;
    }

    protected void notifyValueUpdateStart() {
        if (this.mStateListener != null) {
            this.mStateListener.onValueUpdateStart();
        }
    }

    protected void notifyValueUpdateEnd() {
        if (this.mStateListener != null) {
            this.mStateListener.onValueUpdateEnd();
        }
    }
}
