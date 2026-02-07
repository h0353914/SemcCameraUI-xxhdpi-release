package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnClickListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;

/* JADX INFO: loaded from: classes.dex */
class SetupWizardActivity$1 implements MessageDialogController$MessageDialogOnClickListener {
    final /* synthetic */ SetupWizardActivity this$0;

    SetupWizardActivity$1(SetupWizardActivity setupWizardActivity) {
        this.this$0 = setupWizardActivity;
    }

    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnClickListener
    public void onClick(MessageDialogRequest messageDialogRequest) {
        switch (SetupWizardActivity$11.$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[messageDialogRequest.mDialogId.ordinal()]) {
            case 1:
                SetupWizardActivity.access$102(this.this$0, true);
                SetupWizardActivity.access$200(this.this$0, SetupWizardActivity$InterruptedBy.LOCATION_SETTING);
                break;
            case 2:
                SetupWizardActivity.access$200(this.this$0, SetupWizardActivity$InterruptedBy.SIDE_SENSE_SETTING);
                break;
        }
    }
}
