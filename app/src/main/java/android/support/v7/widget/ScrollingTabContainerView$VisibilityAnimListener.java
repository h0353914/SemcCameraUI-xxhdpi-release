package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.ViewPropertyAnimator;

protected class ScrollingTabContainerView$VisibilityAnimListener extends AnimatorListenerAdapter {
    private boolean mCanceled = false;
    private int mFinalVisibility;
    final /* synthetic */ ScrollingTabContainerView this$0;

    protected ScrollingTabContainerView$VisibilityAnimListener(ScrollingTabContainerView scrollingTabContainerView) {
        this.this$0 = scrollingTabContainerView;
    }

    public ScrollingTabContainerView$VisibilityAnimListener withFinalVisibility(ViewPropertyAnimator viewPropertyAnimator, int i) {
        this.mFinalVisibility = i;
        this.this$0.mVisibilityAnim = viewPropertyAnimator;
        return this;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.this$0.setVisibility(0);
        this.mCanceled = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.mCanceled) {
            return;
        }
        this.this$0.mVisibilityAnim = null;
        this.this$0.setVisibility(this.mFinalVisibility);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.mCanceled = true;
    }
}
