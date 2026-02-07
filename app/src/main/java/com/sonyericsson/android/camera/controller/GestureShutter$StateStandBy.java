package com.sonyericsson.android.camera.controller;

import android.graphics.RectF;
import com.sonyericsson.android.camera.CameraActivity$LayoutOrientation;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface$HandStatus;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class GestureShutter$StateStandBy extends GestureShutter$State {
    final /* synthetic */ GestureShutter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected GestureShutter$StateStandBy(GestureShutter gestureShutter) {
        super(gestureShutter, false, true);
        this.this$0 = gestureShutter;
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void entry() {
        GestureShutter.access$500(this.this$0).hideGestureShutterView();
        if (GestureShutter.access$200(this.this$0) == null) {
            GestureShutter.access$202(this.this$0, GestureShutter.access$1100(this.this$0));
        }
        if (!GestureShutter.access$200(this.this$0).isStarted()) {
            if (CamLog.VERBOSE) {
                CamLog.d("Detection not started, start it now");
            }
            GestureShutter.access$200(this.this$0).startDetect(GestureShutter.access$1200(this.this$0));
        }
        if (GestureShutter.access$100(this.this$0) == CameraActivity$LayoutOrientation.Unknown) {
            GestureShutter.access$102(this.this$0, GestureShutter.access$700(this.this$0).getLayoutOrientation());
        }
        GestureShutter.access$200(this.this$0).setLayoutOrientation(GestureShutter.access$100(this.this$0));
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void handleDetectResult(HandSignsDetectorInterface$DetectResultInterface handSignsDetectorInterface$DetectResultInterface) {
        RectF rectFAccess$1300;
        if (handSignsDetectorInterface$DetectResultInterface.getStatus() != HandSignsDetectorInterface$DetectResultInterface$HandStatus.PALM || GestureShutter.access$200(this.this$0) == null || !GestureShutter.access$1000(this.this$0) || (rectFAccess$1300 = GestureShutter.access$1300(this.this$0, handSignsDetectorInterface$DetectResultInterface.getArea(), GestureShutter.access$200(this.this$0).getDetectWidth(), GestureShutter.access$200(this.this$0).getDetectHeight())) == null) {
            return;
        }
        GestureShutter.access$400(this.this$0, new GestureShutter$StateRecognitionProceeding(this.this$0, rectFAccess$1300));
    }
}
