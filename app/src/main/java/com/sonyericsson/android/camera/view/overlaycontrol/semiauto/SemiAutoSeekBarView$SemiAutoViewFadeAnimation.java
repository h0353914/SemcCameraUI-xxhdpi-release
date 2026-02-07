package com.sonyericsson.android.camera.view.overlaycontrol.semiauto;

import android.os.SystemClock;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

/* JADX INFO: loaded from: classes.dex */
class SemiAutoSeekBarView$SemiAutoViewFadeAnimation extends AlphaAnimation implements Animation$AnimationListener {
    private long mStartTime;

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationEnd(Animation animation) {
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    /* synthetic */ SemiAutoSeekBarView$SemiAutoViewFadeAnimation(float f, float f2, SemiAutoSeekBarView$1 semiAutoSeekBarView$1) {
        this(f, f2);
    }

    static /* synthetic */ boolean access$000(SemiAutoSeekBarView$SemiAutoViewFadeAnimation semiAutoSeekBarView$SemiAutoViewFadeAnimation) {
        return semiAutoSeekBarView$SemiAutoViewFadeAnimation.isRunning();
    }

    static /* synthetic */ float access$100(SemiAutoSeekBarView$SemiAutoViewFadeAnimation semiAutoSeekBarView$SemiAutoViewFadeAnimation) {
        return semiAutoSeekBarView$SemiAutoViewFadeAnimation.getCurrentProgress();
    }

    private SemiAutoSeekBarView$SemiAutoViewFadeAnimation(float f, float f2) {
        super(f, f2);
        this.mStartTime = -1L;
        setAnimationListener(this);
    }

    private float getCurrentProgress() {
        long jUptimeMillis = SystemClock.uptimeMillis() - this.mStartTime;
        if (jUptimeMillis < getDuration()) {
            return jUptimeMillis / getDuration();
        }
        return -1.0f;
    }

    private boolean isRunning() {
        return 0 < this.mStartTime && SystemClock.uptimeMillis() - this.mStartTime < getDuration();
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationStart(Animation animation) {
        this.mStartTime = SystemClock.uptimeMillis();
    }
}
