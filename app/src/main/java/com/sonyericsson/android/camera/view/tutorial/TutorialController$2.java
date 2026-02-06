package com.sonyericsson.android.camera.view.tutorial;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

class TutorialController$2 implements Animator$AnimatorListener {
    final /* synthetic */ TutorialController this$0;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    TutorialController$2(TutorialController tutorialController) {
        this.this$0 = tutorialController;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        if (TutorialController.access$100(this.this$0).getVisibility() != 0) {
            TutorialController.access$100(this.this$0).setVisibility(0);
        }
        TutorialController.access$200(this.this$0, true);
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        TutorialController.access$300("open()  : Tutorial is opened.");
        TutorialController.access$400(this.this$0);
    }
}
