package com.sonyericsson.android.camera;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;
import android.os.Process;

/* JADX INFO: loaded from: classes.dex */
class MultiWindowActivity$2 implements DialogInterface$OnCancelListener {
    final /* synthetic */ MultiWindowActivity this$0;

    MultiWindowActivity$2(MultiWindowActivity multiWindowActivity) {
        this.this$0 = multiWindowActivity;
    }

    @Override // android.content.DialogInterface$OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        Process.killProcess(Process.myPid());
    }
}
