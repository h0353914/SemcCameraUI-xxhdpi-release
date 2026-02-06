package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnDismissListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;

class SetupWizardActivity$3 implements MessageDialogController$MessageDialogOnDismissListener {
    final /* synthetic */ SetupWizardActivity this$0;

    SetupWizardActivity$3(SetupWizardActivity setupWizardActivity) {
        this.this$0 = setupWizardActivity;
    }

    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnDismissListener
    public void onDismiss(MessageDialogRequest messageDialogRequest) {
        if (SetupWizardActivity$11.$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[messageDialogRequest.mDialogId.ordinal()] != 1) {
            return;
        }
        SetupWizardActivity.access$700(this.this$0, SetupWizardActivity.access$100(this.this$0));
    }
}
