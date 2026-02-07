package com.sonyericsson.cameracommon.focusview;

/* JADX INFO: loaded from: classes.dex */
class FocusRectangles$ObjectTrackingStoppedInLockedState extends FocusRectangles$ObjectLostInLockedState {
    final /* synthetic */ FocusRectangles this$0;

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectLostInLockedState, com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingInLockedState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleClearAllFocusExceptFace() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusRectangles$ObjectTrackingStoppedInLockedState(FocusRectangles focusRectangles) {
        super(focusRectangles);
        this.this$0 = focusRectangles;
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectLostInLockedState, com.sonyericsson.cameracommon.focusview.FocusRectangles$ObjectTrackingState, com.sonyericsson.cameracommon.focusview.FocusRectangles$DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles$State
    public void handleStopAfLock() {
        FocusRectangles.access$2200(this.this$0);
        FocusRectangles.access$2300(this.this$0);
        FocusRectangles.access$2400(this.this$0, false);
        FocusRectangles.access$800(this.this$0, new FocusRectangles$DefaultFocusState(this.this$0));
    }
}
