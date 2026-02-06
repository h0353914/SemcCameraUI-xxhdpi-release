package com.sonyericsson.android.camera.view.hint;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

class HintTextViewController$2 implements Animator$AnimatorListener {
    final /* synthetic */ HintTextViewController this$0;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    HintTextViewController$2(HintTextViewController hintTextViewController) {
        this.this$0 = hintTextViewController;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (HintTextViewController.access$300(this.this$0) != null && HintTextViewController.access$300(this.this$0).attachedContent != null) {
            HintTextViewController.access$400(this.this$0, HintTextViewController.access$300(this.this$0).attachedContent);
        }
        HintTextViewController.access$500(this.this$0).setAlpha(1.0f);
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        HintTextViewController.access$500(this.this$0).setAlpha(1.0f);
    }
}
