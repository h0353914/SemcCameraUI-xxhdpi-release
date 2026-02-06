package com.sonyericsson.android.camera.view.selectabledialog;

import android.animation.Animator$AnimatorListener;
import android.animation.ObjectAnimator;

class AbsDialogScrollView$SliderAnimation implements AbsDialogScrollView$AnimationFactory {
    private final int mDuration;
    final /* synthetic */ AbsDialogScrollView this$0;

    private AbsDialogScrollView$SliderAnimation(AbsDialogScrollView absDialogScrollView) {
        this.this$0 = absDialogScrollView;
        this.mDuration = this.this$0.getResources().getInteger(2131361808);
    }

    /* synthetic */ AbsDialogScrollView$SliderAnimation(AbsDialogScrollView absDialogScrollView, AbsDialogScrollView$1 absDialogScrollView$1) {
        this(absDialogScrollView);
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$AnimationFactory
    public void open(int i, int i2, Animator$AnimatorListener animator$AnimatorListener) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.this$0.getBackgroundLayout(), "translationY", i2, 0.0f);
        objectAnimatorOfFloat.setDuration(this.mDuration);
        objectAnimatorOfFloat.setInterpolator(AbsDialogScrollView.access$200(this.this$0));
        if (animator$AnimatorListener != null) {
            objectAnimatorOfFloat.addListener(animator$AnimatorListener);
        }
        objectAnimatorOfFloat.start();
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$AnimationFactory
    public void close(int i, int i2, Animator$AnimatorListener animator$AnimatorListener) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.this$0.getBackgroundLayout(), "translationY", 0.0f, i2);
        objectAnimatorOfFloat.setDuration(this.mDuration);
        objectAnimatorOfFloat.setInterpolator(AbsDialogScrollView.access$200(this.this$0));
        if (animator$AnimatorListener != null) {
            objectAnimatorOfFloat.addListener(animator$AnimatorListener);
        }
        objectAnimatorOfFloat.start();
    }
}
