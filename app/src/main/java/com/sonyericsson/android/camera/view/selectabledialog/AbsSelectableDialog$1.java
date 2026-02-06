package com.sonyericsson.android.camera.view.selectabledialog;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

class AbsSelectableDialog$1 implements Animator$AnimatorListener {
    final /* synthetic */ AbsSelectableDialog this$0;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    AbsSelectableDialog$1(AbsSelectableDialog absSelectableDialog) {
        this.this$0 = absSelectableDialog;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        AbsSelectableDialog.access$002(this.this$0, animator);
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.this$0.setEnabled(true);
        AbsSelectableDialog.access$002(this.this$0, null);
    }
}
