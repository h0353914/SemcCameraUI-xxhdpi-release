package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl$StateListener;

class ViewFinderImpl$OverlayControlStateListener implements OverlayControl$StateListener {
    private final ViewFinder$UiComponentKind mKind;
    final /* synthetic */ ViewFinderImpl this$0;

    public ViewFinderImpl$OverlayControlStateListener(ViewFinderImpl viewFinderImpl, ViewFinder$UiComponentKind viewFinder$UiComponentKind) {
        this.this$0 = viewFinderImpl;
        this.mKind = viewFinder$UiComponentKind;
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl$StateListener
    public void onValueUpdateStart() {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_OPENED, this.mKind);
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl$StateListener
    public void onValueUpdateEnd() {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_CLOSED, this.mKind);
    }
}
