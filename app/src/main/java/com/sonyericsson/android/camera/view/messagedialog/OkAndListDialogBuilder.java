package com.sonyericsson.android.camera.view.messagedialog;

import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.DialogInterface$OnDismissListener;
import android.content.res.Resources;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog$Builder;

public class OkAndListDialogBuilder extends MessageDialogBuilder {
    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogBuilder
    protected RotatableDialog create(Context context, int i, MessageSettings messageSettings, MessageDialogRequest messageDialogRequest, DialogInterface$OnClickListener dialogInterface$OnClickListener, DialogInterface$OnClickListener dialogInterface$OnClickListener2, DialogInterface$OnCancelListener dialogInterface$OnCancelListener, DialogInterface$OnDismissListener dialogInterface$OnDismissListener) {
        RotatableDialog$Builder rotatableDialog$Builder = new RotatableDialog$Builder(context);
        rotatableDialog$Builder.setOnKeyListener(new MessageDialogBuilder$KeyEventKiller());
        rotatableDialog$Builder.setOrientation(i);
        rotatableDialog$Builder.setTitle(messageDialogRequest.mDialogId.titleResourceID);
        rotatableDialog$Builder.setPositiveButton(messageDialogRequest.mDialogId.positiveButtonResourceID, dialogInterface$OnClickListener);
        rotatableDialog$Builder.setOnCancelListener(dialogInterface$OnCancelListener);
        rotatableDialog$Builder.setOnDismissListener(dialogInterface$OnDismissListener);
        rotatableDialog$Builder.setCancelable(messageDialogRequest.mDialogId.isCancelable, messageDialogRequest.mDialogId.isCancelableOnTouchOutside);
        StringBuilder sb = new StringBuilder();
        Resources resources = context.getResources();
        if (messageDialogRequest.mDialogId.messageResourceID != -1) {
            sb.append(resources.getString(messageDialogRequest.mDialogId.messageResourceID));
            sb.append(System.lineSeparator());
            sb.append(System.lineSeparator());
        }
        if (messageDialogRequest.mMessageList != null) {
            sb.append(messageDialogRequest.mMessageList);
        }
        if (messageDialogRequest.mDialogId.messageFooterResourceID != -1) {
            sb.append(System.lineSeparator());
            sb.append(System.lineSeparator());
            sb.append(resources.getString(messageDialogRequest.mDialogId.messageFooterResourceID));
        }
        if (isLargeTextEnabled(context)) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
            if (layoutInflaterFrom == null) {
                return null;
            }
            TextView textView = (TextView) layoutInflaterFrom.inflate(messageDialogRequest.mDialogId.layoutResourceID, (ViewGroup) null);
            textView.setMovementMethod(new ScrollingMovementMethod());
            textView.setText(sb.toString());
            rotatableDialog$Builder.setView(textView);
        } else {
            rotatableDialog$Builder.setMessage(sb.toString());
        }
        return rotatableDialog$Builder.createRotatableDialog();
    }

    protected boolean isLargeTextEnabled(Context context) {
        return context.getResources().getConfiguration().fontScale > 1.0f;
    }
}
