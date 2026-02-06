package com.sonyericsson.android.camera;

public class OneshotPhotoActivity extends CameraActivity {
    @Override // com.sonyericsson.android.camera.CameraActivity, com.sonyericsson.cameracommon.activity.TerminateListener
    public void terminateApplication() {
        finish();
    }
}
