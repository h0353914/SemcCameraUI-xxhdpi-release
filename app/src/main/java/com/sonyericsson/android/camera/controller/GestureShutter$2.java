package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultListener;

/* JADX INFO: loaded from: classes.dex */
class GestureShutter$2 implements HandSignsDetectorInterface$DetectResultListener {
    final /* synthetic */ GestureShutter this$0;

    GestureShutter$2(GestureShutter gestureShutter) {
        this.this$0 = gestureShutter;
    }

    @Override // com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultListener
    public void onDetectResult(HandSignsDetectorInterface$DetectResultInterface handSignsDetectorInterface$DetectResultInterface) {
        this.this$0.handleDetectResult(handSignsDetectorInterface$DetectResultInterface);
    }
}
