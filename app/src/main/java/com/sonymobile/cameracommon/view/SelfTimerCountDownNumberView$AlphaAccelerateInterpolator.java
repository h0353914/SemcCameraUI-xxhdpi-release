package com.sonymobile.cameracommon.view;

import android.view.animation.AccelerateInterpolator;

class SelfTimerCountDownNumberView$AlphaAccelerateInterpolator extends AccelerateInterpolator {
    private final float mAnimationRatio;

    SelfTimerCountDownNumberView$AlphaAccelerateInterpolator(float f) {
        this.mAnimationRatio = f;
    }

    @Override // android.view.animation.AccelerateInterpolator, android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = f * (1.0f / this.mAnimationRatio);
        if (1.0f <= f2) {
            f2 = 1.0f;
        }
        return super.getInterpolation(f2);
    }
}
