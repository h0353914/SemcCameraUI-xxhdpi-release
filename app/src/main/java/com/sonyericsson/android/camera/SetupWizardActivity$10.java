package com.sonyericsson.android.camera;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;

/* JADX INFO: loaded from: classes.dex */
class SetupWizardActivity$10 implements DialogInterface$OnDismissListener {
    final /* synthetic */ SetupWizardActivity this$0;

    SetupWizardActivity$10(SetupWizardActivity setupWizardActivity) {
        this.this$0 = setupWizardActivity;
    }

    @Override // android.content.DialogInterface$OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!SetupWizardActivity.access$300(this.this$0).hasNext(TutorialController$TutorialType.SAVE_LOCATION)) {
            SetupWizardActivity.access$400(this.this$0);
        } else {
            SetupWizardActivity.access$300(this.this$0).doNextAction(TutorialController$TutorialType.SAVE_LOCATION);
        }
        SetupWizardActivity.access$1302(this.this$0, null);
    }
}
