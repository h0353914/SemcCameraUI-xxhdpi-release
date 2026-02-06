package com.sonymobile.cameracommon.view;

import android.view.animation.DecelerateInterpolator;

class SelfTimerCountDownCircleView$CircleDecelerateInterpolator extends DecelerateInterpolator {
    private SelfTimerCountDownCircleView$CircleDecelerateInterpolator() {
    }

    /* synthetic */ SelfTimerCountDownCircleView$CircleDecelerateInterpolator(SelfTimerCountDownCircleView$1 selfTimerCountDownCircleView$1) {
        this();
    }

    @Override // android.view.animation.DecelerateInterpolator, android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = f * 1.6666666f;
        if (1.0f <= f2) {
            f2 = 1.0f;
        }
        return super.getInterpolation(f2);
    }
}
