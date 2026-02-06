package com.sonyericsson.android.camera.view;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

class BurstCountView$1 implements Animator$AnimatorListener {
    final /* synthetic */ BurstCountView this$0;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    BurstCountView$1(BurstCountView burstCountView) {
        this.this$0 = burstCountView;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.this$0.setVisibility(4);
        this.this$0.setAlpha(1.0f);
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.this$0.setVisibility(4);
        this.this$0.setAlpha(1.0f);
    }
}
