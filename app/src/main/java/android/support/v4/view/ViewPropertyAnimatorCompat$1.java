package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ViewPropertyAnimatorCompat$1 extends AnimatorListenerAdapter {
    final /* synthetic */ ViewPropertyAnimatorCompat this$0;
    final /* synthetic */ ViewPropertyAnimatorListener val$listener;
    final /* synthetic */ View val$view;

    ViewPropertyAnimatorCompat$1(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorListener viewPropertyAnimatorListener, View view) {
        this.this$0 = viewPropertyAnimatorCompat;
        this.val$listener = viewPropertyAnimatorListener;
        this.val$view = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.val$listener.onAnimationCancel(this.val$view);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.val$listener.onAnimationEnd(this.val$view);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.val$listener.onAnimationStart(this.val$view);
    }
}
