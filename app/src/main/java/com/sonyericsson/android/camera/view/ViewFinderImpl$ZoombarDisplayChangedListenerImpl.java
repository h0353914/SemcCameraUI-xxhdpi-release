package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.baselayout.BaseLayoutPattern;
import com.sonyericsson.android.camera.view.baselayout.zoombar.Zoombar$ZoombarDisplayChangedListener;
import com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Type;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$ZoombarDisplayChangedListenerImpl implements Zoombar$ZoombarDisplayChangedListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$ZoombarDisplayChangedListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$ZoombarDisplayChangedListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.zoombar.Zoombar$ZoombarDisplayChangedListener
    public void onShowZoombar() {
        ViewFinderImpl.access$700(this.this$0).getTopIndicator().setVisibility(4);
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.zoombar.Zoombar$ZoombarDisplayChangedListener
    public void onZoombarHidden() {
        ViewFinderImpl.access$700(this.this$0).getTopIndicator().setVisibility(0);
        if (ViewFinderImpl.access$7900(this.this$0).detachTo(SideTouchUi$Type.COVERING)) {
            if (ViewFinderImpl.access$7900(this.this$0).containsIn(SideTouchUi$Type.RECORDING, SideTouchUi$Type.RECORDING_HDR)) {
                ViewFinderImpl.access$8000(this.this$0, BaseLayoutPattern.RECORDING, true);
            }
            if (ViewFinderImpl.access$7900(this.this$0).containsIn(SideTouchUi$Type.RECORDING_PAUSE, SideTouchUi$Type.RECORDING_HDR_PAUSE)) {
                ViewFinderImpl.access$8000(this.this$0, BaseLayoutPattern.PAUSE_RECORDING, true);
            }
        }
    }
}
