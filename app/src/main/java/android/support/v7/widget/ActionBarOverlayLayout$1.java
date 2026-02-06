package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class ActionBarOverlayLayout$1 extends AnimatorListenerAdapter {
    final /* synthetic */ ActionBarOverlayLayout this$0;

    ActionBarOverlayLayout$1(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.this$0 = actionBarOverlayLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.this$0.mCurrentActionBarTopAnimator = null;
        this.this$0.mAnimatingForFling = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.this$0.mCurrentActionBarTopAnimator = null;
        this.this$0.mAnimatingForFling = false;
    }
}
