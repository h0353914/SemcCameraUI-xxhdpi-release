package com.sonyericsson.android.camera;

import android.support.annotation.MainThread;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$2 implements Runnable {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$2(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // java.lang.Runnable
    @MainThread
    public void run() {
        if (CameraActivity.access$100(this.this$0)) {
            if (CamLog.DEBUG) {
                CamLog.d("Runnable --> sendEvent(EVENT_PAUSE) & closeCamera()");
            }
            CameraActivity.access$102(this.this$0, false);
            CameraActivity.access$300(this.this$0, "activity-paused");
            if (this.this$0.mStateMachine != null) {
                this.this$0.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_PAUSE, true);
            }
            this.this$0.getCameraDevice().closeCamera(CameraActivity.access$400(this.this$0));
            CameraActivity.access$402(this.this$0, null);
            return;
        }
        if (CamLog.DEBUG) {
            throw new IllegalStateException("PauseEventAndReleaseCameraTask was executed when onResume is not skipped.");
        }
    }
}
