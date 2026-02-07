package com.sonyericsson.android.camera;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$7 implements DialogInterface$OnDismissListener {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$7(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // android.content.DialogInterface$OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        CameraActivity.access$1000(this.this$0);
    }
}
