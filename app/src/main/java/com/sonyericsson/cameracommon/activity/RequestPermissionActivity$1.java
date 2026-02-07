package com.sonyericsson.cameracommon.activity;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;

/* JADX INFO: loaded from: classes.dex */
class RequestPermissionActivity$1 implements DialogInterface$OnDismissListener {
    final /* synthetic */ RequestPermissionActivity this$0;

    RequestPermissionActivity$1(RequestPermissionActivity requestPermissionActivity) {
        this.this$0 = requestPermissionActivity;
    }

    @Override // android.content.DialogInterface$OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        RequestPermissionActivity.access$300(this.this$0, RequestPermissionActivity.access$200(this.this$0).getRequestPermissionList());
        RequestPermissionActivity.access$402(this.this$0, null);
    }
}
