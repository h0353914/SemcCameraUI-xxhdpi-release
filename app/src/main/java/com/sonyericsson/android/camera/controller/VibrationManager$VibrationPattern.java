package com.sonyericsson.android.camera.controller;

import com.sonymobile.vibrationeffect.VibrationEffect;

/* JADX INFO: loaded from: classes.dex */
public enum VibrationManager$VibrationPattern {
    EFFECT_STANDARD(VibrationEffect.get(10005)),
    EFFECT_FOR_CAPTURE(android.os.VibrationEffect.createOneShot(10, 100));

    public final android.os.VibrationEffect mVibrationEffect;

    VibrationManager$VibrationPattern(android.os.VibrationEffect vibrationEffect) {
        this.mVibrationEffect = vibrationEffect;
    }
}
