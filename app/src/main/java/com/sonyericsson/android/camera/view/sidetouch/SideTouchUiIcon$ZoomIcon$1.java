package com.sonyericsson.android.camera.view.sidetouch;

import android.view.ViewGroup;
import com.sonyericsson.android.camera.view.baselayout.zoombar.Zoombar$ZoombarDisplayChangedListener;

/* JADX INFO: loaded from: classes.dex */
class SideTouchUiIcon$ZoomIcon$1 implements Zoombar$ZoombarDisplayChangedListener {
    final /* synthetic */ SideTouchUiIcon$ZoomIcon this$0;
    final /* synthetic */ ViewGroup val$from;

    @Override // com.sonyericsson.android.camera.view.baselayout.zoombar.Zoombar$ZoombarDisplayChangedListener
    public void onShowZoombar() {
    }

    SideTouchUiIcon$ZoomIcon$1(SideTouchUiIcon$ZoomIcon sideTouchUiIcon$ZoomIcon, ViewGroup viewGroup) {
        this.this$0 = sideTouchUiIcon$ZoomIcon;
        this.val$from = viewGroup;
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.zoombar.Zoombar$ZoombarDisplayChangedListener
    public void onZoombarHidden() {
        SideTouchUiIcon$ZoomIcon.access$601(this.this$0, this.val$from);
    }
}
