package com.sonyericsson.android.camera.view.messagedialog;

import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.DialogInterface$OnDismissListener;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

/* JADX INFO: loaded from: classes.dex */
public abstract class MessageDialogBuilder {
    protected abstract RotatableDialog create(Context context, int i, MessageSettings messageSettings, MessageDialogRequest messageDialogRequest, DialogInterface$OnClickListener dialogInterface$OnClickListener, DialogInterface$OnClickListener dialogInterface$OnClickListener2, DialogInterface$OnCancelListener dialogInterface$OnCancelListener, DialogInterface$OnDismissListener dialogInterface$OnDismissListener);
}
