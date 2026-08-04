package com.sonyericsson.android.camera.view.messagedialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

public class OkAndListDialogBuilder extends MessageDialogBuilder {
    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogBuilder
    protected RotatableDialog create(Context context, int i, MessageSettings messageSettings, MessageDialogRequest messageDialogRequest, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener, DialogInterface.OnDismissListener onDismissListener) {
        RotatableDialog.Builder builder = new RotatableDialog.Builder(context);
        builder.setOnKeyListener(new MessageDialogBuilder.KeyEventKiller());
        builder.setOrientation(i);
        builder.setTitle(messageDialogRequest.mDialogId.titleResourceID);
        builder.setPositiveButton(messageDialogRequest.mDialogId.positiveButtonResourceID, onClickListener);
        builder.setOnCancelListener(onCancelListener);
        builder.setOnDismissListener(onDismissListener);
        builder.setCancelable(messageDialogRequest.mDialogId.isCancelable, messageDialogRequest.mDialogId.isCancelableOnTouchOutside);

        StringBuilder messageBuilder = new StringBuilder();
        Resources resources = context.getResources();
        if (messageDialogRequest.mDialogId.messageResourceID != -1) {
            messageBuilder.append(resources.getString(messageDialogRequest.mDialogId.messageResourceID));
            messageBuilder.append(System.lineSeparator());
            messageBuilder.append(System.lineSeparator());
        }
        if (messageDialogRequest.mMessageList != null) {
            messageBuilder.append(messageDialogRequest.mMessageList);
        }
        if (messageDialogRequest.mDialogId.messageFooterResourceID != -1) {
            messageBuilder.append(System.lineSeparator());
            messageBuilder.append(System.lineSeparator());
            messageBuilder.append(resources.getString(messageDialogRequest.mDialogId.messageFooterResourceID));
        }

        if (isLargeTextEnabled(context)) {
            LayoutInflater inflater = LayoutInflater.from(context);
            if (inflater == null) {
                return null;
            }
            TextView textView = (TextView) inflater.inflate(messageDialogRequest.mDialogId.layoutResourceID, (ViewGroup) null);
            textView.setMovementMethod(new ScrollingMovementMethod());
            textView.setText(messageBuilder.toString());
            builder.setView(textView);
        } else {
            builder.setMessage(messageBuilder.toString());
        }
        return builder.createRotatableDialog();
    }

    protected boolean isLargeTextEnabled(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        return configuration.fontScale > 1.0f;
    }
}