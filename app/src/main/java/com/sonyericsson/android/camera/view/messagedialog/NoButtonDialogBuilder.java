package com.sonyericsson.android.camera.view.messagedialog;

import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.DialogInterface$OnDismissListener;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog$Builder;

/* JADX INFO: loaded from: classes.dex */
public class NoButtonDialogBuilder extends MessageDialogBuilder {
    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogBuilder
    protected RotatableDialog create(Context context, int i, MessageSettings messageSettings, MessageDialogRequest messageDialogRequest, DialogInterface$OnClickListener dialogInterface$OnClickListener, DialogInterface$OnClickListener dialogInterface$OnClickListener2, DialogInterface$OnCancelListener dialogInterface$OnCancelListener, DialogInterface$OnDismissListener dialogInterface$OnDismissListener) {
        RotatableDialog$Builder rotatableDialog$Builder = new RotatableDialog$Builder(context);
        rotatableDialog$Builder.setOnKeyListener(new MessageDialogBuilder$KeyEventKiller());
        rotatableDialog$Builder.setOrientation(i);
        rotatableDialog$Builder.setTitle(messageDialogRequest.mDialogId.titleResourceID);
        rotatableDialog$Builder.setMessage(messageDialogRequest.mDialogId.messageResourceID);
        rotatableDialog$Builder.setOnCancelListener(dialogInterface$OnCancelListener);
        rotatableDialog$Builder.setOnDismissListener(dialogInterface$OnDismissListener);
        rotatableDialog$Builder.setCancelable(messageDialogRequest.mDialogId.isCancelable, messageDialogRequest.mDialogId.isCancelableOnTouchOutside);
        return rotatableDialog$Builder.createRotatableDialog();
    }
}
