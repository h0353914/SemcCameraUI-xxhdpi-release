package com.sonyericsson.cameracommon.settings;

import com.sonyericsson.cameracommon.sound.SoundPlayer$Type;

public interface SelfTimerInterface {
    int getCountDownIconId();

    int getDurationInMillisecond();

    SoundPlayer$Type getSoundType();
}
