package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.recorder.RecorderException;
import com.sonyericsson.android.camera.util.CamLog;

class CameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask$1 implements Runnable {
    final /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask this$2;

    CameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask$1(CameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask cameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask) {
        this.this$2 = cameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$2.this$1.this$0.isRecorderWorking()) {
            try {
                CameraDeviceHandler.access$3900(this.this$2.this$1.this$0).stopOnCameraError();
            } catch (RecorderException e) {
                CamLog.e("Stop recording by Camera error fail." + e.getMessage());
            }
        }
        this.this$2.this$1.this$0.closeCamera();
    }
}
