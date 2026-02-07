package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CameraController$OnSceneModeChangedCallback implements CameraParameters$SceneRecognitionCallback {
    final /* synthetic */ CameraController this$0;

    private CameraController$OnSceneModeChangedCallback(CameraController cameraController) {
        this.this$0 = cameraController;
    }

    /* synthetic */ CameraController$OnSceneModeChangedCallback(CameraController cameraController, CameraController$1 cameraController$1) {
        this(cameraController);
    }

    @Override // com.sonyericsson.android.camera.device.CameraParameters$SceneRecognitionCallback
    public void onSceneModeChanged(CameraParameters$SceneRecognitionResult cameraParameters$SceneRecognitionResult) {
        if (!CameraController.access$6500(this.this$0)) {
            if (CamLog.DEBUG) {
                CamLog.d("Scene recognition is stopped.");
            }
        } else {
            if (cameraParameters$SceneRecognitionResult == null) {
                LocalResearchUtil.getInstance().clearRecognizedScene();
            }
            CameraController.access$000(this.this$0).onSceneModeChanged(cameraParameters$SceneRecognitionResult);
        }
    }
}
