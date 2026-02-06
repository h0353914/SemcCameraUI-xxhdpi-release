package com.sonyericsson.cameracommon.activity;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;

class RequestPermissionActivity$3 implements DialogInterface$OnClickListener {
    final /* synthetic */ RequestPermissionActivity this$0;

    RequestPermissionActivity$3(RequestPermissionActivity requestPermissionActivity) {
        this.this$0 = requestPermissionActivity;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + this.this$0.getPackageName()));
        try {
            this.this$0.startActivity(intent);
            if (CamLog.VERBOSE) {
                CamLog.d("showPermissionDialog() launchApplicationSettings: " + intent);
            }
        } catch (ActivityNotFoundException e) {
            CamLog.e("showPermissionDialog() launchApplicationSettings: failed.", e);
        }
        RequestPermissionActivity.access$402(this.this$0, null);
    }
}
