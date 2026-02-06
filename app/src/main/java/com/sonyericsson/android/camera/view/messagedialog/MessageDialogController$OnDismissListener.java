package com.sonyericsson.android.camera.view.messagedialog;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;

class MessageDialogController$OnDismissListener implements DialogInterface$OnDismissListener {
    private final MessageDialogRequest mParameter;
    final /* synthetic */ MessageDialogController this$0;

    MessageDialogController$OnDismissListener(MessageDialogController messageDialogController, MessageDialogRequest messageDialogRequest) {
        this.this$0 = messageDialogController;
        this.mParameter = messageDialogRequest;
    }

    @Override // android.content.DialogInterface$OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        MessageDialogController.access$100("onDismissListener onDismiss()");
        MessageDialogController.access$500(this.this$0).onDismiss(this.mParameter);
        MessageDialogController.access$600(this.this$0).clear();
        MessageDialogController.access$702(this.this$0, null);
        MessageDialogController.access$800(this.this$0);
    }
}
