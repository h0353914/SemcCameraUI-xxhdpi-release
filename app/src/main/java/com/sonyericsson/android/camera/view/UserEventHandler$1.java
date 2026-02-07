package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator$TranslatedKeyCode;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class UserEventHandler$1 {
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture = new int[TouchCapture.values().length];
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$UserEventHandler$VirtualKeyEvent;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode;

    static {
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture[TouchCapture.ON.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture[TouchCapture.FRONT_ONLY.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent = new int[StateMachine$TransitterEvent.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_CAPTURE_BURST.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_CAPTURE.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode = new int[CapturingMode.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SUPERIOR_FRONT.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SCENE_RECOGNITION.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.VIDEO.ordinal()] = 3;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.FRONT_VIDEO.ordinal()] = 4;
        } catch (NoSuchFieldError unused9) {
        }
        $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode = new int[KeyEventTranslator$TranslatedKeyCode.values().length];
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.VOLUME.ordinal()] = 1;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.ZOOM.ordinal()] = 2;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.FOCUS.ordinal()] = 3;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.SHUTTER.ordinal()] = 4;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.FOCUS_AND_SHUTTER_UP_KEY.ordinal()] = 5;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.FOCUS_AND_SHUTTER_DOWN_KEY.ordinal()] = 6;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.BACK.ordinal()] = 7;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.MENU.ordinal()] = 8;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.IGNORED.ordinal()] = 9;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[KeyEventTranslator$TranslatedKeyCode.ENTER.ordinal()] = 10;
        } catch (NoSuchFieldError unused19) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$UserEventHandler$VirtualKeyEvent = new int[UserEventHandler$VirtualKeyEvent.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$UserEventHandler$VirtualKeyEvent[UserEventHandler$VirtualKeyEvent.SMILE_CAPTURE.ordinal()] = 1;
        } catch (NoSuchFieldError unused20) {
        }
    }
}
