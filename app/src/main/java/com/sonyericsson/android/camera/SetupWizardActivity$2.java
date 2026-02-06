package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnClickListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;

class SetupWizardActivity$2 implements MessageDialogController$MessageDialogOnClickListener {
    final /* synthetic */ SetupWizardActivity this$0;

    SetupWizardActivity$2(SetupWizardActivity setupWizardActivity) {
        this.this$0 = setupWizardActivity;
    }

    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnClickListener
    public void onClick(MessageDialogRequest messageDialogRequest) {
        switch (SetupWizardActivity$11.$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[messageDialogRequest.mDialogId.ordinal()]) {
            case 1:
                SetupWizardActivity.access$102(this.this$0, false);
                if (!SetupWizardActivity.access$300(this.this$0).hasNext(TutorialController$TutorialType.SAVE_LOCATION)) {
                    SetupWizardActivity.access$400(this.this$0);
                } else {
                    SetupWizardActivity.access$300(this.this$0).doNextAction(TutorialController$TutorialType.SAVE_LOCATION);
                }
                break;
            case 2:
                SetupWizardActivity.access$500(this.this$0, false);
                SetupWizardActivity.access$600(this.this$0);
                break;
        }
    }
}
