package com.sonyericsson.android.camera;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$9 implements DialogInterface$OnDismissListener {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$9(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // android.content.DialogInterface$OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.this$0.abort();
    }
}
