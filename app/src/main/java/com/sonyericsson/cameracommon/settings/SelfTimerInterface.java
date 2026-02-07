package com.sonyericsson.cameracommon.settings;

import com.sonyericsson.cameracommon.sound.SoundPlayer$Type;

/* JADX INFO: loaded from: classes.dex */
public interface SelfTimerInterface {
    int getCountDownIconId();

    int getDurationInMillisecond();

    SoundPlayer$Type getSoundType();
}
