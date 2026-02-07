package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface;
import com.sonyericsson.android.camera.research.LocalResearchUtil;

/* JADX INFO: loaded from: classes.dex */
abstract class GestureShutter$State {
    final boolean mCanStartDetection;
    final boolean mCanStopDetection;
    final /* synthetic */ GestureShutter this$0;

    void entry() {
    }

    void handleConfirmingFinished() {
    }

    void handleDetectResult(HandSignsDetectorInterface$DetectResultInterface handSignsDetectorInterface$DetectResultInterface) {
    }

    void handleProceedFinished() {
    }

    void handleRewindFinished() {
    }

    void setWindowHost(GestureShutter$WindowHost gestureShutter$WindowHost) {
    }

    protected GestureShutter$State(GestureShutter gestureShutter, boolean z, boolean z2) {
        this.this$0 = gestureShutter;
        this.mCanStartDetection = z;
        this.mCanStopDetection = z2;
    }

    void updateDetectionStatus() {
        if (this.mCanStartDetection && GestureShutter.access$300(this.this$0)) {
            LocalResearchUtil.getInstance().startHandSignLostNumCounting();
            GestureShutter.access$400(this.this$0, new GestureShutter$StateStandBy(this.this$0));
        } else {
            if (!this.mCanStopDetection || GestureShutter.access$300(this.this$0)) {
                return;
            }
            LocalResearchUtil.getInstance().resetHandSignLostNum();
            GestureShutter.access$400(this.this$0, new GestureShutter$StateStopped(this.this$0, false));
        }
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
