package com.sonyericsson.android.camera.view.selectabledialog;

import android.animation.Animator$AnimatorListener;

class AbsDialogScrollView$2 implements AbsDialogScrollView$AnimationFactory {
    final /* synthetic */ AbsDialogScrollView this$0;

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$AnimationFactory
    public void open(int i, int i2, Animator$AnimatorListener animator$AnimatorListener) {
    }

    AbsDialogScrollView$2(AbsDialogScrollView absDialogScrollView) {
        this.this$0 = absDialogScrollView;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$AnimationFactory
    public void close(int i, int i2, Animator$AnimatorListener animator$AnimatorListener) {
        if (animator$AnimatorListener != null) {
            animator$AnimatorListener.onAnimationEnd(null);
        }
    }
}
