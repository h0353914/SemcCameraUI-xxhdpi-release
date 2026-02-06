package com.sonyericsson.android.camera;

import android.content.Context;
import android.view.OrientationEventListener;

class SetupWizardActivity$4 extends OrientationEventListener {
    final /* synthetic */ SetupWizardActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SetupWizardActivity$4(SetupWizardActivity setupWizardActivity, Context context) {
        super(context);
        this.this$0 = setupWizardActivity;
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int i) {
        int iAccess$800 = SetupWizardActivity.access$800(this.this$0, i);
        if (SetupWizardActivity.access$900(this.this$0) != iAccess$800) {
            SetupWizardActivity.access$902(this.this$0, iAccess$800);
            if (SetupWizardActivity.access$1000(this.this$0)) {
                SetupWizardActivity.access$1100("change to PORTRAIT.");
            } else {
                SetupWizardActivity.access$1100("change to LANDSCAPE.");
            }
            if (SetupWizardActivity.access$1200(this.this$0) != null) {
                SetupWizardActivity.access$1200(this.this$0).setSensorOrientation(iAccess$800);
            }
            if (SetupWizardActivity.access$300(this.this$0) != null) {
                SetupWizardActivity.access$300(this.this$0).setUiOrientation(iAccess$800);
            }
            if (SetupWizardActivity.access$1300(this.this$0) != null) {
                SetupWizardActivity.access$1300(this.this$0).setOrientation(iAccess$800);
            }
        }
    }
}
