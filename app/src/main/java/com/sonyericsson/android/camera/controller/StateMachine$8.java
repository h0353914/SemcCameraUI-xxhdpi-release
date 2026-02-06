package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.device.CameraDeviceHandler$PreProcessState;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.recorder.RecorderController$Result;
import com.sonyericsson.android.camera.view.ViewFinder$HeadUpDisplaySetupState;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;

/* synthetic */ class StateMachine$8 {
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType = new int[SavingTaskManager$SavedFileType.values().length];

    static {
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[SavingTaskManager$SavedFileType.BURST.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[SavingTaskManager$SavedFileType.VIDEO.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[SavingTaskManager$SavedFileType.PHOTO.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId = new int[CameraInfo$CameraId.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId[CameraInfo$CameraId.BACK.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId[CameraInfo$CameraId.FRONT.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture = new int[FastCapture.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture[FastCapture.LAUNCH_ONLY.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture[FastCapture.LAUNCH_AND_CAPTURE.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture[FastCapture.OFF.ordinal()] = 3;
        } catch (NoSuchFieldError unused8) {
        }
        $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent = new int[StateMachine$StaticEvent.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_PHOTO_STACK_INITIALIZED.ordinal()] = 1;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED.ordinal()] = 2;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_SCENE_MODE_CHANGED.ordinal()] = 3;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_FACE_DETECTED.ordinal()] = 4;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_OBJECT_TRACKED.ordinal()] = 5;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_ORIENTATION_CHANGED.ordinal()] = 6;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_LAZY_INITIALIZATION_TASK_RUN.ordinal()] = 7;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_OBJECT_TRACKING_LOST.ordinal()] = 8;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED.ordinal()] = 9;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_SD_PERMISSION_DISPLAY_FINISHED.ordinal()] = 10;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[StateMachine$StaticEvent.EVENT_ON_PREVIEW_STARTED.ordinal()] = 11;
        } catch (NoSuchFieldError unused19) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState = new int[ViewFinder$HeadUpDisplaySetupState.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.PHOTO_READY.ordinal()] = 1;
        } catch (NoSuchFieldError unused20) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.VIDEO_READY.ordinal()] = 2;
        } catch (NoSuchFieldError unused21) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.VIDEO_RECORDING.ordinal()] = 3;
        } catch (NoSuchFieldError unused22) {
        }
        $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent = new int[StateMachine$TransitterEvent.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_INITIALIZE.ordinal()] = 1;
        } catch (NoSuchFieldError unused23) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_RESUME.ordinal()] = 2;
        } catch (NoSuchFieldError unused24) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_RESUME_TIMEOUT.ordinal()] = 3;
        } catch (NoSuchFieldError unused25) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_PAUSE.ordinal()] = 4;
        } catch (NoSuchFieldError unused26) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_FINALIZE.ordinal()] = 5;
        } catch (NoSuchFieldError unused27) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_WARNING.ordinal()] = 6;
        } catch (NoSuchFieldError unused28) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_WARNING_EXTRA.ordinal()] = 7;
        } catch (NoSuchFieldError unused29) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_COOLING_LOW.ordinal()] = 8;
        } catch (NoSuchFieldError unused30) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW.ordinal()] = 9;
        } catch (NoSuchFieldError unused31) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_REACH_BATTERY_LIMIT.ordinal()] = 10;
        } catch (NoSuchFieldError unused32) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_REACH_BATTERY_LOW.ordinal()] = 11;
        } catch (NoSuchFieldError unused33) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_BATTERY_LEVEL_CHANGED.ordinal()] = 12;
        } catch (NoSuchFieldError unused34) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_CRITICAL.ordinal()] = 13;
        } catch (NoSuchFieldError unused35) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_NORMAL.ordinal()] = 14;
        } catch (NoSuchFieldError unused36) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_EVF_PREPARED.ordinal()] = 15;
        } catch (NoSuchFieldError unused37) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_INITIAL_AUTO_FOCUS_DONE.ordinal()] = 16;
        } catch (NoSuchFieldError unused38) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_AUTO_FOCUS_DONE.ordinal()] = 17;
        } catch (NoSuchFieldError unused39) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_PRE_SHUTTER_DONE.ordinal()] = 18;
        } catch (NoSuchFieldError unused40) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_SHUTTER_DONE.ordinal()] = 19;
        } catch (NoSuchFieldError unused41) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_PREPARE_BURST_DONE.ordinal()] = 20;
        } catch (NoSuchFieldError unused42) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_PRE_TAKE_PICTURE_DONE.ordinal()] = 21;
        } catch (NoSuchFieldError unused43) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_TAKE_PICTURE_DONE.ordinal()] = 22;
        } catch (NoSuchFieldError unused44) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_VIDEO_RECORDING_DONE.ordinal()] = 23;
        } catch (NoSuchFieldError unused45) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_TOUCH_CONTENT_PROGRESS.ordinal()] = 24;
        } catch (NoSuchFieldError unused46) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_STORE_REQUESTED.ordinal()] = 25;
        } catch (NoSuchFieldError unused47) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_STORE_COMPLETED.ordinal()] = 26;
        } catch (NoSuchFieldError unused48) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_KEY_MENU.ordinal()] = 27;
        } catch (NoSuchFieldError unused49) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_START_TRANSITION_OPERATION.ordinal()] = 28;
        } catch (NoSuchFieldError unused50) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_FINISH_TRANSITION_OPERATION.ordinal()] = 29;
        } catch (NoSuchFieldError unused51) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_CLEAR_FOCUS.ordinal()] = 30;
        } catch (NoSuchFieldError unused52) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_DIALOG_OPENED.ordinal()] = 31;
        } catch (NoSuchFieldError unused53) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_DIALOG_CLOSED.ordinal()] = 32;
        } catch (NoSuchFieldError unused54) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_STORAGE_ERROR.ordinal()] = 33;
        } catch (NoSuchFieldError unused55) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_STORAGE_MOUNTED.ordinal()] = 34;
        } catch (NoSuchFieldError unused56) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_STORAGE_UNGRANTED.ordinal()] = 35;
        } catch (NoSuchFieldError unused57) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_SET_TOUCHED_POSITION.ordinal()] = 36;
        } catch (NoSuchFieldError unused58) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY.ordinal()] = 37;
        } catch (NoSuchFieldError unused59) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_RECORDING_START_WAIT_DONE.ordinal()] = 38;
        } catch (NoSuchFieldError unused60) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_RECORDING_ERROR.ordinal()] = 39;
        } catch (NoSuchFieldError unused61) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_CHANGE_SELECTED_FACE.ordinal()] = 40;
        } catch (NoSuchFieldError unused62) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_SET_SELECTED_OBJECT_POSITION.ordinal()] = 41;
        } catch (NoSuchFieldError unused63) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_DESELECT_OBJECT_POSITION.ordinal()] = 42;
        } catch (NoSuchFieldError unused64) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_START_AF_AFTER_OBJECT_TRACKED.ordinal()] = 43;
        } catch (NoSuchFieldError unused65) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_BURST_SHUTTER_DONE.ordinal()] = 44;
        } catch (NoSuchFieldError unused66) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_BURST_STORE_COMPLETED.ordinal()] = 45;
        } catch (NoSuchFieldError unused67) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_PREDICTIVE_CAPTURE_GROUP_STORE_COMPLETED.ordinal()] = 46;
        } catch (NoSuchFieldError unused68) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_ONE_PREVIEW_FRAME_UPDATED.ordinal()] = 47;
        } catch (NoSuchFieldError unused69) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_CONTINUOUS_PREVIEW_FRAME_UPDATED.ordinal()] = 48;
        } catch (NoSuchFieldError unused70) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_SWITCH_CAMERA.ordinal()] = 49;
        } catch (NoSuchFieldError unused71) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_CANCEL_TOUCHED_POSITION.ordinal()] = 50;
        } catch (NoSuchFieldError unused72) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_SEMIAUTO_ENABLED.ordinal()] = 51;
        } catch (NoSuchFieldError unused73) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_SEMIAUTO_DISABLED.ordinal()] = 52;
        } catch (NoSuchFieldError unused74) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_AMBER_BLUE_COLOR_CHANGED.ordinal()] = 53;
        } catch (NoSuchFieldError unused75) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_BRIGHTNESS_CHANGED.ordinal()] = 54;
        } catch (NoSuchFieldError unused76) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_SELFTIMER_CANCEL.ordinal()] = 55;
        } catch (NoSuchFieldError unused77) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_CAMERA_DEVICE_OPENED.ordinal()] = 56;
        } catch (NoSuchFieldError unused78) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_CAMERA_DEVICE_CLOSED.ordinal()] = 57;
        } catch (NoSuchFieldError unused79) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_STOP_RECORDING_SLOW_MOTION_BUTTON_RELEASE.ordinal()] = 58;
        } catch (NoSuchFieldError unused80) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_SLOW_MOTION_FEEDBACK_ANIMATION_END.ordinal()] = 59;
        } catch (NoSuchFieldError unused81) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_HIGH_FRAME_RATE_RECORDING_DONE.ordinal()] = 60;
        } catch (NoSuchFieldError unused82) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ANGLE_CHANGE_START.ordinal()] = 61;
        } catch (NoSuchFieldError unused83) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_CAPTURE_READY.ordinal()] = 62;
        } catch (NoSuchFieldError unused84) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN.ordinal()] = 63;
        } catch (NoSuchFieldError unused85) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_CAPTURE.ordinal()] = 64;
        } catch (NoSuchFieldError unused86) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_CAPTURE_BURST.ordinal()] = 65;
        } catch (NoSuchFieldError unused87) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL.ordinal()] = 66;
        } catch (NoSuchFieldError unused88) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_RECORD_READY.ordinal()] = 67;
        } catch (NoSuchFieldError unused89) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_START_RECORDING.ordinal()] = 68;
        } catch (NoSuchFieldError unused90) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_STOP_RECORDING.ordinal()] = 69;
        } catch (NoSuchFieldError unused91) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_RESUME_RECORDING.ordinal()] = 70;
        } catch (NoSuchFieldError unused92) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_PAUSE_RECORDING.ordinal()] = 71;
        } catch (NoSuchFieldError unused93) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_TRIGGER_SLOW_MOTION.ordinal()] = 72;
        } catch (NoSuchFieldError unused94) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE.ordinal()] = 73;
        } catch (NoSuchFieldError unused95) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ON_FUSION_CONDITION_CHANGED.ordinal()] = 74;
        } catch (NoSuchFieldError unused96) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_STORAGE_READY_STATE_CHANGED.ordinal()] = 75;
        } catch (NoSuchFieldError unused97) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_CHANGE_CAPTURING_MODE.ordinal()] = 76;
        } catch (NoSuchFieldError unused98) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ZOOM_PREPARE.ordinal()] = 77;
        } catch (NoSuchFieldError unused99) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ZOOM_PERFORM.ordinal()] = 78;
        } catch (NoSuchFieldError unused100) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[StateMachine$TransitterEvent.EVENT_ZOOM_FINISH.ordinal()] = 79;
        } catch (NoSuchFieldError unused101) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree = new int[AnimationRequest$AnimationDegree.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[AnimationRequest$AnimationDegree.CANCEL.ordinal()] = 1;
        } catch (NoSuchFieldError unused102) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[AnimationRequest$AnimationDegree.EXEC.ordinal()] = 2;
        } catch (NoSuchFieldError unused103) {
        }
        $SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result = new int[RecorderController$Result.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result[RecorderController$Result.MAX_DURATION_REACHED.ordinal()] = 1;
        } catch (NoSuchFieldError unused104) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result[RecorderController$Result.MAX_FILESIZE_REACHED.ordinal()] = 2;
        } catch (NoSuchFieldError unused105) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result[RecorderController$Result.SUCCESS.ordinal()] = 3;
        } catch (NoSuchFieldError unused106) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result[RecorderController$Result.FAIL.ordinal()] = 4;
        } catch (NoSuchFieldError unused107) {
        }
        $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition = new int[StateMachine$NextCaptureCondition.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition[StateMachine$NextCaptureCondition.READY.ordinal()] = 1;
        } catch (NoSuchFieldError unused108) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition[StateMachine$NextCaptureCondition.REQUESTED.ordinal()] = 2;
        } catch (NoSuchFieldError unused109) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition[StateMachine$NextCaptureCondition.UNACCEPTABLE.ordinal()] = 3;
        } catch (NoSuchFieldError unused110) {
        }
        $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState = new int[StateMachine$CaptureState.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_OPERATION_RESTRICTED.ordinal()] = 1;
        } catch (NoSuchFieldError unused111) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_PHOTO_READY.ordinal()] = 2;
        } catch (NoSuchFieldError unused112) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_VIDEO_READY.ordinal()] = 3;
        } catch (NoSuchFieldError unused113) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_WARNING.ordinal()] = 4;
        } catch (NoSuchFieldError unused114) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION.ordinal()] = 5;
        } catch (NoSuchFieldError unused115) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_VIDEO_RECORDING.ordinal()] = 6;
        } catch (NoSuchFieldError unused116) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_VIDEO_RECORDING_PAUSING.ordinal()] = 7;
        } catch (NoSuchFieldError unused117) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_VIDEO_STORE.ordinal()] = 8;
        } catch (NoSuchFieldError unused118) {
        }
        $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState = new int[CameraDeviceHandler$PreProcessState.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState[CameraDeviceHandler$PreProcessState.PRE_SCAN_DONE.ordinal()] = 1;
        } catch (NoSuchFieldError unused119) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState[CameraDeviceHandler$PreProcessState.PRE_CAPTURE_STARTED.ordinal()] = 2;
        } catch (NoSuchFieldError unused120) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState[CameraDeviceHandler$PreProcessState.PRE_CAPTURE_DONE.ordinal()] = 3;
        } catch (NoSuchFieldError unused121) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState[CameraDeviceHandler$PreProcessState.PRE_SCAN_STARTED.ordinal()] = 4;
        } catch (NoSuchFieldError unused122) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState[CameraDeviceHandler$PreProcessState.NOT_STARTED.ordinal()] = 5;
        } catch (NoSuchFieldError unused123) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState[CameraDeviceHandler$PreProcessState.PRE_CAPTURE_RELEASED.ordinal()] = 6;
        } catch (NoSuchFieldError unused124) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState[CameraDeviceHandler$PreProcessState.PRE_SHUTTER_DONE.ordinal()] = 7;
        } catch (NoSuchFieldError unused125) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode = new int[CapturingMode.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.NORMAL.ordinal()] = 1;
        } catch (NoSuchFieldError unused126) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.FRONT_PHOTO.ordinal()] = 2;
        } catch (NoSuchFieldError unused127) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SLOW_MOTION.ordinal()] = 3;
        } catch (NoSuchFieldError unused128) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.UNKNOWN.ordinal()] = 4;
        } catch (NoSuchFieldError unused129) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SCENE_RECOGNITION.ordinal()] = 5;
        } catch (NoSuchFieldError unused130) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SUPERIOR_FRONT.ordinal()] = 6;
        } catch (NoSuchFieldError unused131) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.FRONT_VIDEO.ordinal()] = 7;
        } catch (NoSuchFieldError unused132) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.VIDEO.ordinal()] = 8;
        } catch (NoSuchFieldError unused133) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion = new int[SlowMotion.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[SlowMotion.STANDARD_SLOW_MOTION.ordinal()] = 1;
        } catch (NoSuchFieldError unused134) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[SlowMotion.SUPER_SLOW_MOTION.ordinal()] = 2;
        } catch (NoSuchFieldError unused135) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[SlowMotion.SUPER_SLOW_SHOT.ordinal()] = 3;
        } catch (NoSuchFieldError unused136) {
        }
    }
}
