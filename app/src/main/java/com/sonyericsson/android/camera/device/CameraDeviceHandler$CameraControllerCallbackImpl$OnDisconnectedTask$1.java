package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.recorder.RecorderException;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask$1 implements Runnable {
    final /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask this$2;

    CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask$1(CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask cameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask) {
        this.this$2 = cameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$2.this$1.this$0.isRecorderWorking()) {
            try {
                CameraDeviceHandler.access$3900(this.this$2.this$1.this$0).stopOnCameraError();
            } catch (RecorderException e) {
                CamLog.e("Stop recording by Camera eviction fails." + e.getMessage());
            }
        }
        this.this$2.this$1.this$0.closeCamera();
    }
}
