package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: loaded from: classes.dex */
class DefaultItemAnimator$5 extends AnimatorListenerAdapter {
    final /* synthetic */ DefaultItemAnimator this$0;
    final /* synthetic */ ViewPropertyAnimator val$animation;
    final /* synthetic */ RecyclerView$ViewHolder val$holder;
    final /* synthetic */ View val$view;

    DefaultItemAnimator$5(DefaultItemAnimator defaultItemAnimator, RecyclerView$ViewHolder recyclerView$ViewHolder, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.this$0 = defaultItemAnimator;
        this.val$holder = recyclerView$ViewHolder;
        this.val$view = view;
        this.val$animation = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.this$0.dispatchAddStarting(this.val$holder);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.val$view.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.val$animation.setListener(null);
        this.this$0.dispatchAddFinished(this.val$holder);
        this.this$0.mAddAnimations.remove(this.val$holder);
        this.this$0.dispatchFinishedWhenDone();
    }
}
