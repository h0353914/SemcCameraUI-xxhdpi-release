package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.view.GestureShutterView$AnimationStatusListener;

/* JADX INFO: loaded from: classes.dex */
class GestureShutter$1 implements GestureShutterView$AnimationStatusListener {
    final /* synthetic */ GestureShutter this$0;

    GestureShutter$1(GestureShutter gestureShutter) {
        this.this$0 = gestureShutter;
    }

    @Override // com.sonyericsson.android.camera.view.GestureShutterView$AnimationStatusListener
    public void handleRewindFinished() {
        GestureShutter.access$000(this.this$0).handleRewindFinished();
    }

    @Override // com.sonyericsson.android.camera.view.GestureShutterView$AnimationStatusListener
    public void handleProceedFinished() {
        GestureShutter.access$000(this.this$0).handleProceedFinished();
    }

    @Override // com.sonyericsson.android.camera.view.GestureShutterView$AnimationStatusListener
    public void handleConfirmingFinished() {
        GestureShutter.access$000(this.this$0).handleConfirmingFinished();
    }
}
