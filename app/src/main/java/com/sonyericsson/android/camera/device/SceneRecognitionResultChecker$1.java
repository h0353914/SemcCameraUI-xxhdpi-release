package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
class SceneRecognitionResultChecker$1 implements Runnable {
    final /* synthetic */ SceneRecognitionResultChecker this$0;
    final /* synthetic */ CameraParameters$SceneRecognitionResult val$sceneRecognitionResult;

    SceneRecognitionResultChecker$1(SceneRecognitionResultChecker sceneRecognitionResultChecker, CameraParameters$SceneRecognitionResult cameraParameters$SceneRecognitionResult) {
        this.this$0 = sceneRecognitionResultChecker;
        this.val$sceneRecognitionResult = cameraParameters$SceneRecognitionResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (SceneRecognitionResultChecker.access$000(this.this$0) != null) {
            SceneRecognitionResultChecker.access$000(this.this$0).onSceneModeChanged(this.val$sceneRecognitionResult);
        }
    }
}
