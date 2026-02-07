package com.sonyericsson.android.camera.controller;

/* JADX INFO: loaded from: classes.dex */
class GestureShutter$StateInitializing extends GestureShutter$State {
    final /* synthetic */ GestureShutter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GestureShutter$StateInitializing(GestureShutter gestureShutter) {
        super(gestureShutter, false, false);
        this.this$0 = gestureShutter;
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void setWindowHost(GestureShutter$WindowHost gestureShutter$WindowHost) {
        GestureShutter.access$502(this.this$0, gestureShutter$WindowHost);
        GestureShutter.access$400(this.this$0, new GestureShutter$StateStopped(this.this$0, false));
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void entry() {
        GestureShutter.access$700(this.this$0).addOrientationListener(GestureShutter.access$600(this.this$0));
        if (GestureShutter.access$500(this.this$0) != null) {
            GestureShutter.access$400(this.this$0, new GestureShutter$StateStopped(this.this$0, false));
        }
    }
}
