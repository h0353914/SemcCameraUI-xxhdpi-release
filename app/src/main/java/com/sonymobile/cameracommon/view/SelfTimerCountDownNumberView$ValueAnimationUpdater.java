package com.sonymobile.cameracommon.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

class SelfTimerCountDownNumberView$ValueAnimationUpdater implements ValueAnimator$AnimatorUpdateListener {
    final /* synthetic */ SelfTimerCountDownNumberView this$0;

    private SelfTimerCountDownNumberView$ValueAnimationUpdater(SelfTimerCountDownNumberView selfTimerCountDownNumberView) {
        this.this$0 = selfTimerCountDownNumberView;
    }

    /* synthetic */ SelfTimerCountDownNumberView$ValueAnimationUpdater(SelfTimerCountDownNumberView selfTimerCountDownNumberView, SelfTimerCountDownNumberView$1 selfTimerCountDownNumberView$1) {
        this(selfTimerCountDownNumberView);
    }

    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (SelfTimerCountDownNumberView.access$200(this.this$0) == null || SelfTimerCountDownNumberView.access$200(this.this$0).getAnimatedValue() == null) {
            return;
        }
        this.this$0.setImageAlpha(((Integer) SelfTimerCountDownNumberView.access$200(this.this$0).getAnimatedValue()).intValue());
        this.this$0.invalidate();
    }
}
