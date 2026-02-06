package com.sonyericsson.android.camera.view.sidetouch;

import android.view.animation.DecelerateInterpolator;

class SideTouchCountDownCircleView$CircleDecelerateInterpolator extends DecelerateInterpolator {
    private SideTouchCountDownCircleView$CircleDecelerateInterpolator() {
    }

    /* synthetic */ SideTouchCountDownCircleView$CircleDecelerateInterpolator(SideTouchCountDownCircleView$1 sideTouchCountDownCircleView$1) {
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
