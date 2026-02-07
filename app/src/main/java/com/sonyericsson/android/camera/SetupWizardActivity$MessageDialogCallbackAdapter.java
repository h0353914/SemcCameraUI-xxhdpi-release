package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnCancelListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnDismissListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnOpenListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;

/* JADX INFO: loaded from: classes.dex */
class SetupWizardActivity$MessageDialogCallbackAdapter implements MessageDialogController$MessageDialogOnDismissListener, MessageDialogController$MessageDialogOnOpenListener, MessageDialogController$MessageDialogOnCancelListener {
    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnCancelListener
    public void onCancel(MessageDialogRequest messageDialogRequest) {
    }

    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnDismissListener
    public void onDismiss(MessageDialogRequest messageDialogRequest) {
    }

    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnOpenListener
    public void onOpen(MessageDialogRequest messageDialogRequest) {
    }

    private SetupWizardActivity$MessageDialogCallbackAdapter() {
    }

    /* synthetic */ SetupWizardActivity$MessageDialogCallbackAdapter(SetupWizardActivity$1 setupWizardActivity$1) {
        this();
    }
}
