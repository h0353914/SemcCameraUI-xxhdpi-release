package com.sonyericsson.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$ShutDownReceiver extends BroadcastReceiver {
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$ShutDownReceiver(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$ShutDownReceiver(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.ACTION_SHUTDOWN".equals(intent.getAction())) {
            this.this$0.getCameraDevice().setIsInShutdownNow(true);
        }
    }
}
