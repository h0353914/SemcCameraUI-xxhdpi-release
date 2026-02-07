package com.sonyericsson.android.camera.view.selectabledialog;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;

/* JADX INFO: loaded from: classes.dex */
class AbsSelectableDialog$2 implements Animator$AnimatorListener {
    final /* synthetic */ AbsSelectableDialog this$0;

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    AbsSelectableDialog$2(AbsSelectableDialog absSelectableDialog) {
        this.this$0 = absSelectableDialog;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.this$0.mParams.animationType == AbsSelectableDialog$AnimationType.SLIDER) {
            if (this.this$0.isPortrait()) {
                this.this$0.mSettingDialogStack.getBackground().setTranslationX(0.0f);
            } else {
                this.this$0.mSettingDialogStack.getBackground().setTranslationY(0.0f);
            }
        }
        this.this$0.closeImmediate();
    }
}
