package com.sonyericsson.android.camera.controller;

class GestureShutter$StateReleasing extends GestureShutter$State {
    final /* synthetic */ GestureShutter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GestureShutter$StateReleasing(GestureShutter gestureShutter) {
        super(gestureShutter, false, false);
        this.this$0 = gestureShutter;
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void entry() {
        GestureShutter.access$700(this.this$0).removeOrientationListener(GestureShutter.access$600(this.this$0));
    }
}
