package com.sonyericsson.cameracommon.keytranslator;

import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class KeyEventTranslator$1 {
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VolumeKey;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$KeyAction = new int[KeyEventTranslator$KeyAction.values().length];
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode;

    static {
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$KeyAction[KeyEventTranslator$KeyAction.DOWN.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$KeyAction[KeyEventTranslator$KeyAction.UP.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$KeyAction[KeyEventTranslator$KeyAction.LONG_PRESS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode = new int[KeyEventTranslator$TranslatedKeyCode.values().length];
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.FOCUS.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.SHUTTER.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.FOCUS_AND_SHUTTER_UP_KEY.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.FOCUS_AND_SHUTTER_DOWN_KEY.ordinal()] = 4;
        } catch (NoSuchFieldError unused7) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VolumeKey = new int[VolumeKey.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VolumeKey[VolumeKey.ZOOM.ordinal()] = 1;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VolumeKey[VolumeKey.VOLUME.ordinal()] = 2;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VolumeKey[VolumeKey.HW_CAMERA_KEY.ordinal()] = 3;
        } catch (NoSuchFieldError unused10) {
        }
    }
}
