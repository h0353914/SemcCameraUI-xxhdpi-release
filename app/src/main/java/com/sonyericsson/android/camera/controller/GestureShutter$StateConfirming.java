package com.sonyericsson.android.camera.controller;

class GestureShutter$StateConfirming extends GestureShutter$State {
    final /* synthetic */ GestureShutter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected GestureShutter$StateConfirming(GestureShutter gestureShutter) {
        super(gestureShutter, false, true);
        this.this$0 = gestureShutter;
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void entry() {
        GestureShutter.access$500(this.this$0).getGestureShutterView().startConfirming();
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void handleConfirmingFinished() {
        GestureShutter.access$400(this.this$0, new GestureShutter$StateStopped(this.this$0, false));
        if (GestureShutter.access$1000(this.this$0)) {
            GestureShutter.access$700(this.this$0).prepareGestureShutterCountDown();
            GestureShutter.access$700(this.this$0).startGestureShutterCountDown();
        }
    }
}
