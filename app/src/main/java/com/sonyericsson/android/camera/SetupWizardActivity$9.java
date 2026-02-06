package com.sonyericsson.android.camera;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;

class SetupWizardActivity$9 implements DialogInterface$OnClickListener {
    final /* synthetic */ SetupWizardActivity this$0;

    SetupWizardActivity$9(SetupWizardActivity setupWizardActivity) {
        this.this$0 = setupWizardActivity;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (!SetupWizardActivity.access$300(this.this$0).hasNext(TutorialController$TutorialType.SAVE_LOCATION)) {
            SetupWizardActivity.access$400(this.this$0);
        } else {
            SetupWizardActivity.access$300(this.this$0).doNextAction(TutorialController$TutorialType.SAVE_LOCATION);
        }
        SetupWizardActivity.access$1302(this.this$0, null);
    }
}
