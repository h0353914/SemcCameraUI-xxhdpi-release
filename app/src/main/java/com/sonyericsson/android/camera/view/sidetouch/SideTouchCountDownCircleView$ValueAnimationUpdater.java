package com.sonyericsson.android.camera.view.sidetouch;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

class SideTouchCountDownCircleView$ValueAnimationUpdater implements ValueAnimator$AnimatorUpdateListener {
    final /* synthetic */ SideTouchCountDownCircleView this$0;

    private SideTouchCountDownCircleView$ValueAnimationUpdater(SideTouchCountDownCircleView sideTouchCountDownCircleView) {
        this.this$0 = sideTouchCountDownCircleView;
    }

    /* synthetic */ SideTouchCountDownCircleView$ValueAnimationUpdater(SideTouchCountDownCircleView sideTouchCountDownCircleView, SideTouchCountDownCircleView$1 sideTouchCountDownCircleView$1) {
        this(sideTouchCountDownCircleView);
    }

    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.this$0.invalidate();
    }
}
