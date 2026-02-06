package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

class DefaultItemAnimator$7 extends AnimatorListenerAdapter {
    final /* synthetic */ DefaultItemAnimator this$0;
    final /* synthetic */ DefaultItemAnimator$ChangeInfo val$changeInfo;
    final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
    final /* synthetic */ View val$view;

    DefaultItemAnimator$7(DefaultItemAnimator defaultItemAnimator, DefaultItemAnimator$ChangeInfo defaultItemAnimator$ChangeInfo, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.this$0 = defaultItemAnimator;
        this.val$changeInfo = defaultItemAnimator$ChangeInfo;
        this.val$oldViewAnim = viewPropertyAnimator;
        this.val$view = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.this$0.dispatchChangeStarting(this.val$changeInfo.oldHolder, true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.val$oldViewAnim.setListener(null);
        this.val$view.setAlpha(1.0f);
        this.val$view.setTranslationX(0.0f);
        this.val$view.setTranslationY(0.0f);
        this.this$0.dispatchChangeFinished(this.val$changeInfo.oldHolder, true);
        this.this$0.mChangeAnimations.remove(this.val$changeInfo.oldHolder);
        this.this$0.dispatchFinishedWhenDone();
    }
}
