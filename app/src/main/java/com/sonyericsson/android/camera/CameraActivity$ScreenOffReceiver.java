package com.sonyericsson.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$ScreenOffReceiver extends BroadcastReceiver {
    private static final String TAG = "ScreenOffReceiver";
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$ScreenOffReceiver(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$ScreenOffReceiver(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (CamLog.VERBOSE) {
            CamLog.d("onReceive():[IN]");
        }
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            if (CamLog.VERBOSE) {
                CamLog.d("onReceive():[Receive SCREEN_OFF]");
            }
            if (this.this$0.isFinishing() || this.this$0.isDestroyed()) {
                return;
            }
            if (this.this$0.getLaunchCondition().getLaunchTrigger() == LaunchCondition$LaunchTrigger.POWER_KEY_DOUBLE_TAP && !CameraActivity.access$800(this.this$0)) {
                CameraActivity.access$900(this.this$0);
            } else {
                this.this$0.requestSuspend();
            }
        }
    }
}
