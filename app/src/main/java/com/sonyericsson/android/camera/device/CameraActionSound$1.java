package com.sonyericsson.android.camera.device;

import android.media.MediaActionSound;

/* JADX INFO: loaded from: classes.dex */
class CameraActionSound$1 implements Runnable {
    final /* synthetic */ CameraActionSound this$0;
    final /* synthetic */ MediaActionSound val$sound;
    final /* synthetic */ int val$soundName;

    CameraActionSound$1(CameraActionSound cameraActionSound, MediaActionSound mediaActionSound, int i) {
        this.this$0 = cameraActionSound;
        this.val$sound = mediaActionSound;
        this.val$soundName = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$sound.load(this.val$soundName);
    }
}
