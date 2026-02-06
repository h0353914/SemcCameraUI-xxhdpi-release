package android.support.v4.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

class FragmentManagerImpl$3 extends AnimatorListenerAdapter {
    final /* synthetic */ FragmentManagerImpl this$0;
    final /* synthetic */ ViewGroup val$container;
    final /* synthetic */ Fragment val$fragment;
    final /* synthetic */ View val$viewToAnimate;

    FragmentManagerImpl$3(FragmentManagerImpl fragmentManagerImpl, ViewGroup viewGroup, View view, Fragment fragment) {
        this.this$0 = fragmentManagerImpl;
        this.val$container = viewGroup;
        this.val$viewToAnimate = view;
        this.val$fragment = fragment;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.val$container.endViewTransition(this.val$viewToAnimate);
        Animator animator2 = this.val$fragment.getAnimator();
        this.val$fragment.setAnimator(null);
        if (animator2 == null || this.val$container.indexOfChild(this.val$viewToAnimate) >= 0) {
            return;
        }
        this.this$0.moveToState(this.val$fragment, this.val$fragment.getStateAfterAnimating(), 0, 0, false);
    }
}
