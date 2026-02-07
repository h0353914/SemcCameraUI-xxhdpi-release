package com.sonyericsson.android.camera.view.messagedialog;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

/* JADX INFO: loaded from: classes.dex */
class MessageDialogController$OnCancelListener implements DialogInterface$OnCancelListener {
    private final MessageDialogRequest mParameter;
    final /* synthetic */ MessageDialogController this$0;

    MessageDialogController$OnCancelListener(MessageDialogController messageDialogController, MessageDialogRequest messageDialogRequest) {
        this.this$0 = messageDialogController;
        this.mParameter = messageDialogRequest;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        MessageDialogController.access$100("onCancelListener onCancel()");
        MessageDialogController.access$400(this.this$0).onCancel(this.mParameter);
    }
}
