package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

class DefaultItemAnimator$4 extends AnimatorListenerAdapter {
    final /* synthetic */ DefaultItemAnimator this$0;
    final /* synthetic */ ViewPropertyAnimator val$animation;
    final /* synthetic */ RecyclerView$ViewHolder val$holder;
    final /* synthetic */ View val$view;

    DefaultItemAnimator$4(DefaultItemAnimator defaultItemAnimator, RecyclerView$ViewHolder recyclerView$ViewHolder, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.this$0 = defaultItemAnimator;
        this.val$holder = recyclerView$ViewHolder;
        this.val$animation = viewPropertyAnimator;
        this.val$view = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.this$0.dispatchRemoveStarting(this.val$holder);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.val$animation.setListener(null);
        this.val$view.setAlpha(1.0f);
        this.this$0.dispatchRemoveFinished(this.val$holder);
        this.this$0.mRemoveAnimations.remove(this.val$holder);
        this.this$0.dispatchFinishedWhenDone();
    }
}
