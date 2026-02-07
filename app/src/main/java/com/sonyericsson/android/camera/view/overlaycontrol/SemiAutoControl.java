package com.sonyericsson.android.camera.view.overlaycontrol;

import android.view.ViewGroup;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver$ScreenAspect;
import com.sonyericsson.android.camera.view.overlaycontrol.semiauto.SemiAutoControlView;

/* JADX INFO: loaded from: classes.dex */
public class SemiAutoControl extends OverlayControl {
    private ValueAccessor<Float> mBrightness;
    private ValueAccessor<Float> mColor;
    private final SemiAutoControlView mView;

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl
    public void refresh() {
    }

    static /* synthetic */ ValueAccessor access$100(SemiAutoControl semiAutoControl) {
        return semiAutoControl.mBrightness;
    }

    static /* synthetic */ ValueAccessor access$200(SemiAutoControl semiAutoControl) {
        return semiAutoControl.mColor;
    }

    public SemiAutoControl(ViewGroup viewGroup, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect, OverlayControl$StateListener overlayControl$StateListener, ValueAccessor<Float> valueAccessor, ValueAccessor<Float> valueAccessor2, boolean z) {
        super(overlayControl$StateListener);
        this.mView = new SemiAutoControlView(viewGroup, layoutDependencyResolver$ScreenAspect);
        this.mView.setOnSemiAutoChangeListener(new SemiAutoControl$OnSemiAutoChangeListenerImpl(this, null));
        this.mView.setExpanded(!z);
        this.mColor = valueAccessor;
        this.mBrightness = valueAccessor2;
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl
    public void enable() {
        super.enable();
        this.mView.enable();
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl
    public void disable() {
        super.disable();
        this.mView.disable();
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl
    public void release() {
        this.mView.release();
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl
    protected void onVisibilityUpdated() {
        if (isVisible()) {
            this.mView.setVisibility(0);
        } else {
            this.mView.setVisibility(4);
        }
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl
    protected void onOrientationChanged(int i) {
        this.mView.setOrientation(i);
    }
}
