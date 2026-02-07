package com.sonyericsson.android.camera.view.messagedialog;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class MessageDialogController$OnClickPositiveListener implements DialogInterface$OnClickListener {
    private final MessageDialogRequest mParameter;
    final /* synthetic */ MessageDialogController this$0;

    MessageDialogController$OnClickPositiveListener(MessageDialogController messageDialogController, MessageDialogRequest messageDialogRequest) {
        this.this$0 = messageDialogController;
        this.mParameter = messageDialogRequest;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MessageDialogController.access$100("onClickPositiveListener onClick()");
        MessageDialogController.access$200(this.this$0).onClick(this.mParameter);
    }
}
