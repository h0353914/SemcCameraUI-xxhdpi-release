package com.sonyericsson.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$ForceExitRequestReceiver extends BroadcastReceiver {
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$ForceExitRequestReceiver(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$ForceExitRequestReceiver(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (CamLog.VERBOSE) {
            CamLog.d("ForceExitRequestReceiver.onReceive()");
        }
        if (intent != null && this.this$0.getStoredSettings().getMessageSettings().isNeverShow(MessageType.SETUP_WIZARD) && "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST".equals(intent.getAction())) {
            if (CamLog.VERBOSE) {
                CamLog.d("ForceExitRequestReceiver() Force Exit");
            }
            this.this$0.finish();
        }
    }
}
