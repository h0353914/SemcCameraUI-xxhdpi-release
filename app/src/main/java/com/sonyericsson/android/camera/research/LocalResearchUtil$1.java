package com.sonyericsson.android.camera.research;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;
import com.sonymobile.cameracommon.research.parameters.Event$Category;

/* synthetic */ class LocalResearchUtil$1 {
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType = new int[TutorialController$TutorialType.values().length];
    static final /* synthetic */ int[] $SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category;

    static {
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.SAVE_LOCATION.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.PREDICTIVE_LAUNCH.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.SIDE_SENSE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.DUAL_CAMERA.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.EYE_GUIDE.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.HAND_SHUTTER.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.SUPER_SLOW_MOTION_MORE_OPTIONS.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.SUPER_SLOW_MOTION.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.SUPER_SLOW_MOTION_SHOT.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.STANDARD_SLOW_MOTION.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.MANUAL_FUSION.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.VIDEO_FUSION.ordinal()] = 12;
        } catch (NoSuchFieldError unused12) {
        }
        $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey = new int[LocalResearchUtil$MeasurementKey.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE.ordinal()] = 1;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE.ordinal()] = 2;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE.ordinal()] = 3;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE.ordinal()] = 4;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE.ordinal()] = 5;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE.ordinal()] = 6;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE.ordinal()] = 7;
        } catch (NoSuchFieldError unused19) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE.ordinal()] = 8;
        } catch (NoSuchFieldError unused20) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.VIDEO_RECORDING_STOP_READY_FOR_USE.ordinal()] = 9;
        } catch (NoSuchFieldError unused21) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.CLOSE_INITIAL_RESPONSE.ordinal()] = 10;
        } catch (NoSuchFieldError unused22) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.CLOSE_READY_FOR_USE.ordinal()] = 11;
        } catch (NoSuchFieldError unused23) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey[LocalResearchUtil$MeasurementKey.SHOT_TO_SHOT_DELAY.ordinal()] = 12;
        } catch (NoSuchFieldError unused24) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode = new int[ModeSelectorInternalMode.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode[ModeSelectorInternalMode.PORTRAIT_SELFIE.ordinal()] = 1;
        } catch (NoSuchFieldError unused25) {
        }
        $SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category = new int[Event$Category.values().length];
        try {
            $SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category[Event$Category.SETTINGS_PHOTO.ordinal()] = 1;
        } catch (NoSuchFieldError unused26) {
        }
        try {
            $SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category[Event$Category.SETTINGS_VIDEO.ordinal()] = 2;
        } catch (NoSuchFieldError unused27) {
        }
        try {
            $SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category[Event$Category.ALL_SETTINGS_PHOTO.ordinal()] = 3;
        } catch (NoSuchFieldError unused28) {
        }
        try {
            $SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category[Event$Category.ALL_SETTINGS_VIDEO.ordinal()] = 4;
        } catch (NoSuchFieldError unused29) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode = new int[CapturingMode.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SCENE_RECOGNITION.ordinal()] = 1;
        } catch (NoSuchFieldError unused30) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.NORMAL.ordinal()] = 2;
        } catch (NoSuchFieldError unused31) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SUPERIOR_FRONT.ordinal()] = 3;
        } catch (NoSuchFieldError unused32) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.FRONT_PHOTO.ordinal()] = 4;
        } catch (NoSuchFieldError unused33) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.VIDEO.ordinal()] = 5;
        } catch (NoSuchFieldError unused34) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.FRONT_VIDEO.ordinal()] = 6;
        } catch (NoSuchFieldError unused35) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SLOW_MOTION.ordinal()] = 7;
        } catch (NoSuchFieldError unused36) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey = new int[UserSettingKey.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.GEO_TAG.ordinal()] = 1;
        } catch (NoSuchFieldError unused37) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.TOUCH_CAPTURE.ordinal()] = 2;
        } catch (NoSuchFieldError unused38) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VOLUME_KEY.ordinal()] = 3;
        } catch (NoSuchFieldError unused39) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SHUTTER_SOUND.ordinal()] = 4;
        } catch (NoSuchFieldError unused40) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.DESTINATION_TO_SAVE.ordinal()] = 5;
        } catch (NoSuchFieldError unused41) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FAST_CAPTURE.ordinal()] = 6;
        } catch (NoSuchFieldError unused42) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.GRID_LINE.ordinal()] = 7;
        } catch (NoSuchFieldError unused43) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.AUTO_REVIEW.ordinal()] = 8;
        } catch (NoSuchFieldError unused44) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.PREDICTIVE_LAUNCH.ordinal()] = 9;
        } catch (NoSuchFieldError unused45) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SIDE_SENSE.ordinal()] = 10;
        } catch (NoSuchFieldError unused46) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FLASH.ordinal()] = 11;
        } catch (NoSuchFieldError unused47) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.ASPECT_RATIO.ordinal()] = 12;
        } catch (NoSuchFieldError unused48) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.RESOLUTION.ordinal()] = 13;
        } catch (NoSuchFieldError unused49) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SELF_TIMER.ordinal()] = 14;
        } catch (NoSuchFieldError unused50) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SHUTTER_TRIGGER.ordinal()] = 15;
        } catch (NoSuchFieldError unused51) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.HDR.ordinal()] = 16;
        } catch (NoSuchFieldError unused52) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.ISO.ordinal()] = 17;
        } catch (NoSuchFieldError unused53) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SOFT_SKIN.ordinal()] = 18;
        } catch (NoSuchFieldError unused54) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.EV.ordinal()] = 19;
        } catch (NoSuchFieldError unused55) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.WHITE_BALANCE.ordinal()] = 20;
        } catch (NoSuchFieldError unused56) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.METERING.ordinal()] = 21;
        } catch (NoSuchFieldError unused57) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SHUTTER_SPEED.ordinal()] = 22;
        } catch (NoSuchFieldError unused58) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FOCUS_RANGE.ordinal()] = 23;
        } catch (NoSuchFieldError unused59) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.CAMERA_KEY.ordinal()] = 24;
        } catch (NoSuchFieldError unused60) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.DISPLAY_FLASH.ordinal()] = 25;
        } catch (NoSuchFieldError unused61) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.TOUCH_INTENTION.ordinal()] = 26;
        } catch (NoSuchFieldError unused62) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FUSION_MODE.ordinal()] = 27;
        } catch (NoSuchFieldError unused63) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.PREDICTIVE_CAPTURE.ordinal()] = 28;
        } catch (NoSuchFieldError unused64) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.PHOTO_LIGHT.ordinal()] = 29;
        } catch (NoSuchFieldError unused65) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_SIZE.ordinal()] = 30;
        } catch (NoSuchFieldError unused66) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_SHUTTER_TRIGGER.ordinal()] = 31;
        } catch (NoSuchFieldError unused67) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_STABILIZER.ordinal()] = 32;
        } catch (NoSuchFieldError unused68) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_CODEC.ordinal()] = 33;
        } catch (NoSuchFieldError unused69) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.VIDEO_HDR.ordinal()] = 34;
        } catch (NoSuchFieldError unused70) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SLOW_MOTION.ordinal()] = 35;
        } catch (NoSuchFieldError unused71) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FOCUS_MODE.ordinal()] = 36;
        } catch (NoSuchFieldError unused72) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.OBJECT_TRACKING.ordinal()] = 37;
        } catch (NoSuchFieldError unused73) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.FRONT_ANGLE.ordinal()] = 38;
        } catch (NoSuchFieldError unused74) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.DISTORTION_CORRECTION.ordinal()] = 39;
        } catch (NoSuchFieldError unused75) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.HELP_GUIDE.ordinal()] = 40;
        } catch (NoSuchFieldError unused76) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.RESET_SETTINGS.ordinal()] = 41;
        } catch (NoSuchFieldError unused77) {
        }
    }
}
