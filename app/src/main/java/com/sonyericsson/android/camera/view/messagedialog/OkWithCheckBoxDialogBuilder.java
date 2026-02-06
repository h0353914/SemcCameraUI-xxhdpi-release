package com.sonyericsson.android.camera.view.messagedialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.DialogInterface$OnDismissListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog$Builder;

public class OkWithCheckBoxDialogBuilder extends MessageDialogBuilder {
    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogBuilder
    protected RotatableDialog create(Context context, int i, MessageSettings messageSettings, MessageDialogRequest messageDialogRequest, DialogInterface$OnClickListener dialogInterface$OnClickListener, DialogInterface$OnClickListener dialogInterface$OnClickListener2, DialogInterface$OnCancelListener dialogInterface$OnCancelListener, DialogInterface$OnDismissListener dialogInterface$OnDismissListener) {
        RotatableDialog$Builder rotatableDialog$Builder = new RotatableDialog$Builder(context);
        rotatableDialog$Builder.setOnKeyListener(new MessageDialogBuilder$KeyEventKiller());
        View viewInflate = LayoutInflater.from(context).inflate(messageDialogRequest.mDialogId.layoutResourceID, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(2131296413)).setText(messageDialogRequest.mDialogId.messageResourceID);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(2131296351);
        MessageDialogBuilder$MessageDialogCheckBoxListener messageDialogBuilder$MessageDialogCheckBoxListener = new MessageDialogBuilder$MessageDialogCheckBoxListener(messageSettings, messageDialogRequest.mDialogId.getMessageType());
        checkBox.setOnCheckedChangeListener(messageDialogBuilder$MessageDialogCheckBoxListener);
        checkBox.setChecked(messageDialogRequest.mDialogId.hasOnCheckBox);
        rotatableDialog$Builder.setViewAsScrollable(viewInflate);
        rotatableDialog$Builder.setOrientation(i);
        rotatableDialog$Builder.setTitle(messageDialogRequest.mDialogId.titleResourceID);
        rotatableDialog$Builder.setPositiveButton(messageDialogRequest.mDialogId.positiveButtonResourceID, new OkWithCheckBoxDialogBuilder$1(this, (Activity) context, messageDialogBuilder$MessageDialogCheckBoxListener, dialogInterface$OnClickListener));
        rotatableDialog$Builder.setOnCancelListener(dialogInterface$OnCancelListener);
        rotatableDialog$Builder.setOnDismissListener(dialogInterface$OnDismissListener);
        rotatableDialog$Builder.setCancelable(messageDialogRequest.mDialogId.isCancelable, messageDialogRequest.mDialogId.isCancelableOnTouchOutside);
        return rotatableDialog$Builder.createRotatableDialog();
    }
}
