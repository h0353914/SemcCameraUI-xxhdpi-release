package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.view.baselayout.BaseLayoutPattern;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$ViewFinderStateListener implements CaptureArea$CaptureAreaStateListener {
    final /* synthetic */ ViewFinderImpl this$0;

    @Override // com.sonyericsson.android.camera.view.CaptureArea$CaptureAreaStateListener
    public void onCaptureAreaMoved() {
    }

    @Override // com.sonyericsson.android.camera.view.CaptureArea$CaptureAreaStateListener
    public void onCaptureAreaStopped() {
    }

    private ViewFinderImpl$ViewFinderStateListener(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$ViewFinderStateListener(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.android.camera.view.CaptureArea$CaptureAreaStateListener
    public void onCaptureAreaTouched() {
        ViewFinderImpl.access$2000(this.this$0).sendTouchDown(UserEventHandler$UiComponent.CAPTURE_AREA);
    }

    @Override // com.sonyericsson.android.camera.view.CaptureArea$CaptureAreaStateListener
    public void onCaptureAreaSingleTapUp(Point point) {
        ViewFinderImpl.access$2000(this.this$0).sendClick(UserEventHandler$UiComponent.CAPTURE_AREA, point);
    }

    @Override // com.sonyericsson.android.camera.view.CaptureArea$CaptureAreaStateListener
    public void onCaptureAreaLongPressed(Point point) {
        ViewFinderImpl.access$2000(this.this$0).sendLongClick(UserEventHandler$UiComponent.CAPTURE_AREA, point);
    }

    @Override // com.sonyericsson.android.camera.view.CaptureArea$CaptureAreaStateListener
    public void onCaptureAreaReleased(Point point) {
        ViewFinderImpl.access$2000(this.this$0).sendTouchUp(UserEventHandler$UiComponent.CAPTURE_AREA, point);
    }

    @Override // com.sonyericsson.android.camera.view.CaptureArea$CaptureAreaStateListener
    public void onCaptureAreaCanceled() {
        ViewFinderImpl.access$2000(this.this$0).sendCancel(UserEventHandler$UiComponent.CAPTURE_AREA);
    }

    @Override // com.sonyericsson.android.camera.view.CaptureArea$CaptureAreaStateListener
    public void onCaptureAreaIsReadyToScale() {
        if (ViewFinderImpl.access$5700(this.this$0)) {
            if (ViewFinderImpl.access$5800(this.this$0) != BaseLayoutPattern.SELFTIMER) {
                this.this$0.notifyZoomOperationRejected();
                return;
            }
            return;
        }
        ViewFinderImpl.access$2000(this.this$0).sendCaptureAreaScaleReady(UserEventHandler$UiComponent.CAPTURE_AREA);
    }

    @Override // com.sonyericsson.android.camera.view.CaptureArea$CaptureAreaStateListener
    public void onCaptureAreaScaled(float f) {
        if (ViewFinderImpl.access$5700(this.this$0)) {
            return;
        }
        ViewFinderImpl.access$2000(this.this$0).sendCaptureAreaScaling(UserEventHandler$UiComponent.CAPTURE_AREA, f);
    }
}
