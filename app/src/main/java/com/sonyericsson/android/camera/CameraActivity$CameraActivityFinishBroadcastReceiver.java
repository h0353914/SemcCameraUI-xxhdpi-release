package com.sonyericsson.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;

class CameraActivity$CameraActivityFinishBroadcastReceiver extends BroadcastReceiver {
    final WeakReference<CameraActivity> mCameraActivityRef;

    CameraActivity$CameraActivityFinishBroadcastReceiver(CameraActivity cameraActivity) {
        this.mCameraActivityRef = new WeakReference<>(cameraActivity);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        CameraActivity cameraActivity = this.mCameraActivityRef.get();
        if (cameraActivity == null || cameraActivity.isFinishing()) {
            return;
        }
        cameraActivity.abort();
    }
}
