package android.support.v4.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
class FragmentManagerImpl$4 extends AnimatorListenerAdapter {
    final /* synthetic */ FragmentManagerImpl this$0;
    final /* synthetic */ View val$animatingView;
    final /* synthetic */ ViewGroup val$container;
    final /* synthetic */ Fragment val$fragment;

    FragmentManagerImpl$4(FragmentManagerImpl fragmentManagerImpl, ViewGroup viewGroup, View view, Fragment fragment) {
        this.this$0 = fragmentManagerImpl;
        this.val$container = viewGroup;
        this.val$animatingView = view;
        this.val$fragment = fragment;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.val$container.endViewTransition(this.val$animatingView);
        animator.removeListener(this);
        if (this.val$fragment.mView != null) {
            this.val$fragment.mView.setVisibility(8);
        }
    }
}
