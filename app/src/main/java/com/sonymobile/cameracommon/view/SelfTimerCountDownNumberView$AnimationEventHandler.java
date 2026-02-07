package com.sonymobile.cameracommon.view;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

/* JADX INFO: loaded from: classes.dex */
class SelfTimerCountDownNumberView$AnimationEventHandler implements Animator$AnimatorListener {
    final /* synthetic */ SelfTimerCountDownNumberView this$0;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    private SelfTimerCountDownNumberView$AnimationEventHandler(SelfTimerCountDownNumberView selfTimerCountDownNumberView) {
        this.this$0 = selfTimerCountDownNumberView;
    }

    /* synthetic */ SelfTimerCountDownNumberView$AnimationEventHandler(SelfTimerCountDownNumberView selfTimerCountDownNumberView, SelfTimerCountDownNumberView$1 selfTimerCountDownNumberView$1) {
        this(selfTimerCountDownNumberView);
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.this$0.setImageAlpha(0);
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        this.this$0.setImageAlpha(0);
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.this$0.setImageBitmap(null);
    }
}
