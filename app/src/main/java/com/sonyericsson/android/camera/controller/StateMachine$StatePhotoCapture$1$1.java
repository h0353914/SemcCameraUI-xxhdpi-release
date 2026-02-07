package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StatePhotoCapture$1$1 implements Runnable {
    final /* synthetic */ StateMachine$StatePhotoCapture$1 this$2;

    StateMachine$StatePhotoCapture$1$1(StateMachine$StatePhotoCapture$1 stateMachine$StatePhotoCapture$1) {
        this.this$2 = stateMachine$StatePhotoCapture$1;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke onInitialized");
        }
        if (this.this$2.this$1.this$0.getCurrentCaptureState() == StateMachine$CaptureState.STATE_PHOTO_CAPTURE) {
            StateMachine.access$3500(this.this$2.this$1.this$0, true);
            StateMachine.access$3400(this.this$2.this$1.this$0, new StateMachine$StatePhotoReady(this.this$2.this$1.this$0, true), new Object[0]);
        }
    }
}
