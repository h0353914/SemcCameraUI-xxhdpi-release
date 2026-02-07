package com.sonyericsson.android.camera.controller;

import android.graphics.RectF;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface$HandStatus;

/* JADX INFO: loaded from: classes.dex */
class GestureShutter$StateRecognitionProceeding extends GestureShutter$State {
    final RectF mInitialFrame;
    final /* synthetic */ GestureShutter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GestureShutter$StateRecognitionProceeding(GestureShutter gestureShutter, RectF rectF) {
        super(gestureShutter, false, true);
        this.this$0 = gestureShutter;
        this.mInitialFrame = new RectF();
        this.mInitialFrame.set(rectF);
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void entry() {
        GestureShutter.access$500(this.this$0).showGestureShutterView();
        GestureShutter.access$500(this.this$0).getGestureShutterView().setListener(GestureShutter.access$1400(this.this$0));
        GestureShutter.access$500(this.this$0).getGestureShutterView().startProceed(this.mInitialFrame);
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void handleProceedFinished() {
        GestureShutter.access$400(this.this$0, new GestureShutter$StateConfirming(this.this$0));
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void handleDetectResult(HandSignsDetectorInterface$DetectResultInterface handSignsDetectorInterface$DetectResultInterface) {
        if (GestureShutter.access$1000(this.this$0)) {
            if (handSignsDetectorInterface$DetectResultInterface.getStatus() == HandSignsDetectorInterface$DetectResultInterface$HandStatus.PALM && GestureShutter.access$200(this.this$0) != null) {
                RectF rectFAccess$1300 = GestureShutter.access$1300(this.this$0, handSignsDetectorInterface$DetectResultInterface.getArea(), GestureShutter.access$200(this.this$0).getDetectWidth(), GestureShutter.access$200(this.this$0).getDetectHeight());
                if (rectFAccess$1300 != null) {
                    GestureShutter.access$500(this.this$0).getGestureShutterView().updateFrame(rectFAccess$1300);
                    return;
                }
                return;
            }
            GestureShutter.access$400(this.this$0, new GestureShutter$StateRecognitionRewinding(this.this$0));
        }
    }
}
