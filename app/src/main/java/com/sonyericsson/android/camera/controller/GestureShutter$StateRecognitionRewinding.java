package com.sonyericsson.android.camera.controller;

import android.graphics.RectF;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface$HandStatus;
import com.sonyericsson.android.camera.research.LocalResearchUtil;

/* JADX INFO: loaded from: classes.dex */
class GestureShutter$StateRecognitionRewinding extends GestureShutter$State {
    final /* synthetic */ GestureShutter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected GestureShutter$StateRecognitionRewinding(GestureShutter gestureShutter) {
        super(gestureShutter, false, true);
        this.this$0 = gestureShutter;
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void entry() {
        LocalResearchUtil.getInstance().countUpHandSignLostNum();
        GestureShutter.access$500(this.this$0).getGestureShutterView().startRewind();
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void handleRewindFinished() {
        GestureShutter.access$400(this.this$0, new GestureShutter$StateStandBy(this.this$0));
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void handleDetectResult(HandSignsDetectorInterface$DetectResultInterface handSignsDetectorInterface$DetectResultInterface) {
        RectF rectFAccess$1300;
        if (GestureShutter.access$1000(this.this$0) && handSignsDetectorInterface$DetectResultInterface.getStatus() == HandSignsDetectorInterface$DetectResultInterface$HandStatus.PALM && GestureShutter.access$200(this.this$0) != null && (rectFAccess$1300 = GestureShutter.access$1300(this.this$0, handSignsDetectorInterface$DetectResultInterface.getArea(), GestureShutter.access$200(this.this$0).getDetectWidth(), GestureShutter.access$200(this.this$0).getDetectHeight())) != null) {
            GestureShutter.access$400(this.this$0, new GestureShutter$StateRecognitionProceeding(this.this$0, rectFAccess$1300));
        }
    }
}
