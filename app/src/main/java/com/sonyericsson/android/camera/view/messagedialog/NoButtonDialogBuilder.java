package com.sonyericsson.android.camera.view.messagedialog;

import android.content.Context;
import android.content.DialogInterface;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

public class NoButtonDialogBuilder extends MessageDialogBuilder {
    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogBuilder
    protected RotatableDialog create(Context context, int i, MessageSettings messageSettings, MessageDialogRequest messageDialogRequest, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener, DialogInterface.OnDismissListener onDismissListener) {
        RotatableDialog.Builder builder = new RotatableDialog.Builder(context);
        builder.setOnKeyListener(new MessageDialogBuilder.KeyEventKiller());
        builder.setOrientation(i);
        builder.setTitle(messageDialogRequest.mDialogId.titleResourceID);
        builder.setMessage(messageDialogRequest.mDialogId.messageResourceID);
        builder.setOnCancelListener(onCancelListener);
        builder.setOnDismissListener(onDismissListener);
        builder.setCancelable(messageDialogRequest.mDialogId.isCancelable, messageDialogRequest.mDialogId.isCancelableOnTouchOutside);
        return builder.createRotatableDialog();
    }
}