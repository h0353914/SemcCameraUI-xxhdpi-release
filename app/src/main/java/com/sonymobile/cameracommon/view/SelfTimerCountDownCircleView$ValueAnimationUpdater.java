package com.sonymobile.cameracommon.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

class SelfTimerCountDownCircleView$ValueAnimationUpdater implements ValueAnimator$AnimatorUpdateListener {
    final /* synthetic */ SelfTimerCountDownCircleView this$0;

    private SelfTimerCountDownCircleView$ValueAnimationUpdater(SelfTimerCountDownCircleView selfTimerCountDownCircleView) {
        this.this$0 = selfTimerCountDownCircleView;
    }

    /* synthetic */ SelfTimerCountDownCircleView$ValueAnimationUpdater(SelfTimerCountDownCircleView selfTimerCountDownCircleView, SelfTimerCountDownCircleView$1 selfTimerCountDownCircleView$1) {
        this(selfTimerCountDownCircleView);
    }

    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.this$0.invalidate();
    }
}
