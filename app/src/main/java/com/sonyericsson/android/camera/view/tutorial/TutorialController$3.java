package com.sonyericsson.android.camera.view.tutorial;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

/* JADX INFO: loaded from: classes.dex */
class TutorialController$3 implements Animator$AnimatorListener {
    final /* synthetic */ TutorialController this$0;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    TutorialController$3(TutorialController tutorialController) {
        this.this$0 = tutorialController;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        TutorialController.access$500(this.this$0);
        TutorialController.access$600(this.this$0);
        TutorialController.access$100(this.this$0).setAlpha(1.0f);
        TutorialController.access$300("close() : Tutorial is closed.");
    }
}
