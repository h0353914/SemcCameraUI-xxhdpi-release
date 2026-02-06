package com.sonyericsson.android.camera.view.messagedialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

class OkWithCheckBoxDialogBuilder$1 implements DialogInterface$OnClickListener {
    final /* synthetic */ OkWithCheckBoxDialogBuilder this$0;
    final /* synthetic */ MessageDialogBuilder$MessageDialogCheckBoxListener val$checkBoxListener;
    final /* synthetic */ Activity val$localActivity;
    final /* synthetic */ DialogInterface$OnClickListener val$localListener;

    OkWithCheckBoxDialogBuilder$1(OkWithCheckBoxDialogBuilder okWithCheckBoxDialogBuilder, Activity activity, MessageDialogBuilder$MessageDialogCheckBoxListener messageDialogBuilder$MessageDialogCheckBoxListener, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.this$0 = okWithCheckBoxDialogBuilder;
        this.val$localActivity = activity;
        this.val$checkBoxListener = messageDialogBuilder$MessageDialogCheckBoxListener;
        this.val$localListener = dialogInterface$OnClickListener;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.val$localActivity.runOnUiThread(this.val$checkBoxListener);
        this.val$localListener.onClick(dialogInterface, i);
    }
}
