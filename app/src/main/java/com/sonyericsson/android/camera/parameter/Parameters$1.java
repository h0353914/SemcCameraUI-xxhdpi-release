package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class Parameters$1 {
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey = new int[UserSettingKey.values().length];
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode;

    static {
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.CAPTURING_MODE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.CAMERA_KEY.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.PREDICTIVE_CAPTURE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.EV.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FACING.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FLASH.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.DISPLAY_FLASH.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FOCUS_MODE.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.OBJECT_TRACKING.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.HDR.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.ISO.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.METERING.ordinal()] = 12;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.PHOTO_LIGHT.ordinal()] = 13;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.RESOLUTION.ordinal()] = 14;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.ASPECT_RATIO.ordinal()] = 15;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SELF_TIMER.ordinal()] = 16;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SMILE_CAPTURE.ordinal()] = 17;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SHUTTER_TRIGGER.ordinal()] = 18;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SOFT_SKIN.ordinal()] = 19;
        } catch (NoSuchFieldError unused19) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_SHUTTER_TRIGGER.ordinal()] = 20;
        } catch (NoSuchFieldError unused20) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_STABILIZER.ordinal()] = 21;
        } catch (NoSuchFieldError unused21) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_SIZE.ordinal()] = 22;
        } catch (NoSuchFieldError unused22) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_HDR.ordinal()] = 23;
        } catch (NoSuchFieldError unused23) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.WHITE_BALANCE.ordinal()] = 24;
        } catch (NoSuchFieldError unused24) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_SMILE_CAPTURE.ordinal()] = 25;
        } catch (NoSuchFieldError unused25) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_CODEC.ordinal()] = 26;
        } catch (NoSuchFieldError unused26) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SHUTTER_SPEED.ordinal()] = 27;
        } catch (NoSuchFieldError unused27) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FOCUS_RANGE.ordinal()] = 28;
        } catch (NoSuchFieldError unused28) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.TOUCH_INTENTION.ordinal()] = 29;
        } catch (NoSuchFieldError unused29) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.AUTO_REVIEW.ordinal()] = 30;
        } catch (NoSuchFieldError unused30) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.GEO_TAG.ordinal()] = 31;
        } catch (NoSuchFieldError unused31) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FAST_CAPTURE.ordinal()] = 32;
        } catch (NoSuchFieldError unused32) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.TOUCH_CAPTURE.ordinal()] = 33;
        } catch (NoSuchFieldError unused33) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SHUTTER_SOUND.ordinal()] = 34;
        } catch (NoSuchFieldError unused34) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.DESTINATION_TO_SAVE.ordinal()] = 35;
        } catch (NoSuchFieldError unused35) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VOLUME_KEY.ordinal()] = 36;
        } catch (NoSuchFieldError unused36) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.GRID_LINE.ordinal()] = 37;
        } catch (NoSuchFieldError unused37) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SIDE_SENSE.ordinal()] = 38;
        } catch (NoSuchFieldError unused38) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SLOW_MOTION.ordinal()] = 39;
        } catch (NoSuchFieldError unused39) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FRONT_ANGLE.ordinal()] = 40;
        } catch (NoSuchFieldError unused40) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FUSION_MODE.ordinal()] = 41;
        } catch (NoSuchFieldError unused41) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.DISTORTION_CORRECTION.ordinal()] = 42;
        } catch (NoSuchFieldError unused42) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.PREDICTIVE_LAUNCH.ordinal()] = 43;
        } catch (NoSuchFieldError unused43) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode = new int[CapturingMode.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SCENE_RECOGNITION.ordinal()] = 1;
        } catch (NoSuchFieldError unused44) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SUPERIOR_FRONT.ordinal()] = 2;
        } catch (NoSuchFieldError unused45) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.FRONT_PHOTO.ordinal()] = 3;
        } catch (NoSuchFieldError unused46) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.VIDEO.ordinal()] = 4;
        } catch (NoSuchFieldError unused47) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SLOW_MOTION.ordinal()] = 5;
        } catch (NoSuchFieldError unused48) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.FRONT_VIDEO.ordinal()] = 6;
        } catch (NoSuchFieldError unused49) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.NORMAL.ordinal()] = 7;
        } catch (NoSuchFieldError unused50) {
        }
    }
}
