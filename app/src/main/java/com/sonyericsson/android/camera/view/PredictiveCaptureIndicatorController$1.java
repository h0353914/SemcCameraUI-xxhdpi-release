package com.sonyericsson.android.camera.view;

import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

/* JADX INFO: loaded from: classes.dex */
class PredictiveCaptureIndicatorController$1 implements Animation$AnimationListener {
    final /* synthetic */ PredictiveCaptureIndicatorController this$0;

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationStart(Animation animation) {
    }

    PredictiveCaptureIndicatorController$1(PredictiveCaptureIndicatorController predictiveCaptureIndicatorController) {
        this.this$0 = predictiveCaptureIndicatorController;
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationEnd(Animation animation) {
        PredictiveCaptureIndicatorController.access$002(this.this$0, false);
        PredictiveCaptureIndicatorController.access$100(this.this$0);
    }
}
