package com.sonyericsson.android.camera;

import android.view.ViewTreeObserver$OnWindowAttachListener;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$DisplayTrigger;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$OpenType;

class SetupWizardActivity$5 implements ViewTreeObserver$OnWindowAttachListener {
    final /* synthetic */ SetupWizardActivity this$0;

    SetupWizardActivity$5(SetupWizardActivity setupWizardActivity) {
        this.this$0 = setupWizardActivity;
    }

    @Override // android.view.ViewTreeObserver$OnWindowAttachListener
    public void onWindowAttached() {
        SetupWizardActivity.access$1100("onWindowAttached() E");
        SetupWizardActivity.access$1400(this.this$0);
        SetupWizardActivity.access$1200(this.this$0).setSensorOrientation(SetupWizardActivity.access$900(this.this$0));
        SetupWizardActivity.access$300(this.this$0).setUiOrientation(SetupWizardActivity.access$900(this.this$0));
        SetupWizardActivity.access$300(this.this$0).open(TutorialController$OpenType.create(TutorialController$DisplayTrigger.SETUP_WIZARD), null, null);
        SetupWizardActivity.access$1100("onWindowAttached() X");
    }

    @Override // android.view.ViewTreeObserver$OnWindowAttachListener
    public void onWindowDetached() {
        SetupWizardActivity.access$1100("onWindowDetached() E");
        SetupWizardActivity.access$1100("onWindowDetached() X");
    }
}
