package com.sonyericsson.android.camera;

/* JADX INFO: loaded from: classes.dex */
public class CameraActivityOnLockScreen extends CameraActivity {
    @Override // com.sonyericsson.android.camera.CameraActivity
    protected boolean shouldShowWhenLocked() {
        return true;
    }

    @Override // com.sonyericsson.android.camera.CameraActivity
    public void requestSuspend() {
        finish();
    }
}
