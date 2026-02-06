package com.sonyericsson.android.camera.controller;

import android.content.Context;
import android.content.res.Resources;
import android.media.AudioAttributes$Builder;
import android.os.Vibrator;

public class VibrationManager {
    private static final long[] DEFAULT_VIBRATION_PATTERN = {0, 1, 20, 21};

    public static void vibrate(Context context, VibrationManager$VibrationPattern vibrationManager$VibrationPattern) {
        int[] intArray;
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        if (vibrator.hasAmplitudeControl()) {
            vibrator.vibrate(vibrationManager$VibrationPattern.mVibrationEffect, new AudioAttributes$Builder().setUsage(5).setContentType(4).build());
            return;
        }
        long[] jArr = DEFAULT_VIBRATION_PATTERN;
        int identifier = Resources.getSystem().getIdentifier("config_longPressVibePattern", "array", "android");
        if (identifier != 0 && (intArray = Resources.getSystem().getIntArray(identifier)) != null && intArray.length > 0) {
            jArr = new long[intArray.length];
            for (int i = 0; i < intArray.length; i++) {
                jArr[i] = intArray[i];
            }
        }
        vibrator.vibrate(jArr, -1);
    }
}
