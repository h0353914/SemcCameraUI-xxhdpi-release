package com.sonyericsson.android.camera;

import android.support.annotation.MainThread;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$1 implements Runnable {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$1(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // java.lang.Runnable
    @MainThread
    public void run() {
        if (CameraActivity.access$100(this.this$0)) {
            if (CamLog.DEBUG) {
                CamLog.d("Runnable --> onResumeTasks()");
            }
            CameraActivity.access$102(this.this$0, false);
            CameraActivity.access$200(this.this$0);
            return;
        }
        if (CamLog.DEBUG) {
            throw new IllegalStateException("OnResumeTasks was executed when onResume is not skipped.");
        }
    }
}
