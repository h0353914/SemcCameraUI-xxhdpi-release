package com.sonyericsson.cameracommon.focusview;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

/* JADX INFO: loaded from: classes.dex */
class FocusRectangles$3 implements Animator$AnimatorListener {
    final /* synthetic */ FocusRectangles this$0;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    FocusRectangles$3(FocusRectangles focusRectangles) {
        this.this$0 = focusRectangles;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        animator.removeAllListeners();
    }
}
