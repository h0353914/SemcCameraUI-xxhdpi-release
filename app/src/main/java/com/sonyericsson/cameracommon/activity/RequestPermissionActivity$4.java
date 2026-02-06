package com.sonyericsson.cameracommon.activity;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.sonyericsson.android.camera.util.CamLog;

class RequestPermissionActivity$4 implements DialogInterface$OnClickListener {
    final /* synthetic */ RequestPermissionActivity this$0;

    RequestPermissionActivity$4(RequestPermissionActivity requestPermissionActivity) {
        this.this$0 = requestPermissionActivity;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("showPermissionDialog() don't show global settings dialog");
        }
        RequestPermissionActivity.access$402(this.this$0, null);
        RequestPermissionActivity.access$500(this.this$0);
    }
}
