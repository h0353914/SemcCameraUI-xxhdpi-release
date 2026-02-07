package com.sonyericsson.android.camera.view.selectabledialog;

import android.animation.Animator$AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;

/* JADX INFO: loaded from: classes.dex */
class AbsDialogScrollView$FadeAnimation implements AbsDialogScrollView$AnimationFactory {
    private final int mDuration;
    final /* synthetic */ AbsDialogScrollView this$0;

    private AbsDialogScrollView$FadeAnimation(AbsDialogScrollView absDialogScrollView) {
        this.this$0 = absDialogScrollView;
        this.mDuration = this.this$0.getResources().getInteger(2131361808);
    }

    /* synthetic */ AbsDialogScrollView$FadeAnimation(AbsDialogScrollView absDialogScrollView, AbsDialogScrollView$1 absDialogScrollView$1) {
        this(absDialogScrollView);
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$AnimationFactory
    public void open(int i, int i2, Animator$AnimatorListener animator$AnimatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.this$0.getBackgroundLayout(), "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(this.this$0.getBackgroundLayout(), "translationY", i2 / 4.0f, 0.0f));
        animatorSet.setDuration(this.mDuration);
        animatorSet.setInterpolator(AbsDialogScrollView.access$200(this.this$0));
        if (animator$AnimatorListener != null) {
            animatorSet.addListener(animator$AnimatorListener);
        }
        animatorSet.start();
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$AnimationFactory
    public void close(int i, int i2, Animator$AnimatorListener animator$AnimatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.this$0.getBackgroundLayout(), "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(this.this$0.getBackgroundLayout(), "translationY", 0.0f, i2 / 4.0f));
        animatorSet.setDuration(this.mDuration);
        animatorSet.setInterpolator(AbsDialogScrollView.access$200(this.this$0));
        if (animator$AnimatorListener != null) {
            animatorSet.addListener(animator$AnimatorListener);
        }
        animatorSet.start();
    }
}
