package com.sonyericsson.android.camera.view.messagedialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class OkCancelWithCheckBoxDialogBuilder$1 implements DialogInterface$OnClickListener {
    final /* synthetic */ OkCancelWithCheckBoxDialogBuilder this$0;
    final /* synthetic */ MessageDialogBuilder$MessageDialogCheckBoxListener val$checkBoxListener;
    final /* synthetic */ Activity val$localActivity;
    final /* synthetic */ DialogInterface$OnClickListener val$localListenerPositive;

    OkCancelWithCheckBoxDialogBuilder$1(OkCancelWithCheckBoxDialogBuilder okCancelWithCheckBoxDialogBuilder, Activity activity, MessageDialogBuilder$MessageDialogCheckBoxListener messageDialogBuilder$MessageDialogCheckBoxListener, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.this$0 = okCancelWithCheckBoxDialogBuilder;
        this.val$localActivity = activity;
        this.val$checkBoxListener = messageDialogBuilder$MessageDialogCheckBoxListener;
        this.val$localListenerPositive = dialogInterface$OnClickListener;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.val$localActivity.runOnUiThread(this.val$checkBoxListener);
        this.val$localListenerPositive.onClick(dialogInterface, i);
    }
}
