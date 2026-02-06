package com.sonyericsson.android.camera.view.sidetouch;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera.view.ViewFinderImpl$ZoomBarUpdateProxy;
import com.sonyericsson.android.camera.view.baselayout.zoombar.Zoombar;

protected final class SideTouchUiIcon$ZoomIcon extends SideTouchUiIcon {
    private int mOrientation;
    private FrameLayout mZoomBarLayout;
    private final ViewFinderImpl$ZoomBarUpdateProxy mZoomBarUpdateProxy;
    private Zoombar mZoombar;

    static /* synthetic */ void access$601(SideTouchUiIcon$ZoomIcon sideTouchUiIcon$ZoomIcon, ViewGroup viewGroup) {
        super.detach(viewGroup);
    }

    public SideTouchUiIcon$ZoomIcon(Context context, ViewFinderImpl$ZoomBarUpdateProxy viewFinderImpl$ZoomBarUpdateProxy) {
        super(context);
        this.mOrientation = 0;
        this.mZoomBarUpdateProxy = viewFinderImpl$ZoomBarUpdateProxy;
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon
    protected void attachView(ViewGroup viewGroup) {
        View.inflate(this.mContext, 2131493030, viewGroup);
        this.mZoomBarLayout = (FrameLayout) viewGroup.findViewById(2131296701);
        this.mZoombar = (Zoombar) this.mZoomBarLayout.findViewById(2131296700);
        this.mZoomBarUpdateProxy.bindZoomBar(this.mZoombar);
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon, com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void detach(ViewGroup viewGroup) {
        this.mZoombar.setZoombarDisplayChangedListener(new SideTouchUiIcon$ZoomIcon$1(this, viewGroup));
        this.mZoombar.hideDelayed();
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon
    protected View getIconView() {
        return this.mZoomBarLayout;
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void show() {
        this.mZoombar.show();
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void setUiOrientation(int i) {
        if (this.mOrientation == 0) {
            this.mZoombar.setSensorOrientation(i);
            this.mOrientation = i;
        }
    }
}
