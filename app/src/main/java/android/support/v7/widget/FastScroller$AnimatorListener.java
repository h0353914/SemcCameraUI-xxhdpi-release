package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class FastScroller$AnimatorListener extends AnimatorListenerAdapter {
    private boolean mCanceled = false;
    final /* synthetic */ FastScroller this$0;

    FastScroller$AnimatorListener(FastScroller fastScroller) {
        this.this$0 = fastScroller;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.mCanceled) {
            this.mCanceled = false;
        } else if (((Float) this.this$0.mShowHideAnimator.getAnimatedValue()).floatValue() == 0.0f) {
            this.this$0.mAnimationState = 0;
            this.this$0.setState(0);
        } else {
            this.this$0.mAnimationState = 2;
            this.this$0.requestRedraw();
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.mCanceled = true;
    }
}
