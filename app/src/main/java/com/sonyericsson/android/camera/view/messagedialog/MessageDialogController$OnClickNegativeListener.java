package com.sonyericsson.android.camera.view.messagedialog;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

class MessageDialogController$OnClickNegativeListener implements DialogInterface$OnClickListener {
    private final MessageDialogRequest mParameter;
    final /* synthetic */ MessageDialogController this$0;

    MessageDialogController$OnClickNegativeListener(MessageDialogController messageDialogController, MessageDialogRequest messageDialogRequest) {
        this.this$0 = messageDialogController;
        this.mParameter = messageDialogRequest;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MessageDialogController.access$100("onClickNegativeListener onClick()");
        MessageDialogController.access$300(this.this$0).onClick(this.mParameter);
    }
}
