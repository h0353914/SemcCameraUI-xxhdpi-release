package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;

/* JADX INFO: loaded from: classes.dex */
public class ShutterToneGenerator {
    private static final String SOUND_HOME = "/system/media/audio/camera/";
    public static final String TAG = "ShutterToneGenerator";

    public static String getSoundFilePath(ShutterToneGenerator$Type shutterToneGenerator$Type, ShutterSound shutterSound) {
        StringBuffer stringBuffer = new StringBuffer();
        if (shutterSound.getBooleanValue().booleanValue()) {
            stringBuffer.append("/system/media/audio/camera/");
            if (shutterToneGenerator$Type.isCommonSound()) {
                stringBuffer.append(shutterToneGenerator$Type.getFileName());
            } else {
                stringBuffer.append(shutterSound.getDirectoryName());
                stringBuffer.append(shutterToneGenerator$Type.getFileName());
            }
        } else {
            stringBuffer.append("off");
        }
        return stringBuffer.toString();
    }
}
