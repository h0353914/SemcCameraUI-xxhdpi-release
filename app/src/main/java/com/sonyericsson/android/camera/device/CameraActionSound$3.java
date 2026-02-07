package com.sonyericsson.android.camera.device;

import android.media.MediaActionSound;

/* JADX INFO: loaded from: classes.dex */
class CameraActionSound$3 implements Runnable {
    final /* synthetic */ MediaActionSound val$sound;

    CameraActionSound$3(MediaActionSound mediaActionSound) {
        this.val$sound = mediaActionSound;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$sound.release();
    }
}
