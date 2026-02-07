package com.sonyericsson.android.camera;

/* JADX INFO: loaded from: classes.dex */
public class OneshotPhotoActivityOnLockScreen extends CameraActivityOnLockScreen {
    @Override // com.sonyericsson.android.camera.CameraActivity, com.sonyericsson.cameracommon.activity.TerminateListener
    public void terminateApplication() {
        finish();
    }
}
