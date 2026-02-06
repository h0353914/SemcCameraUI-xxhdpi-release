package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.LaunchCondition$ExtraOperation;
import com.sonyericsson.android.camera.NavigatorContents;
import com.sonyericsson.android.camera.SideTouchEventDetector$SideTouchArea;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler$Direction;
import com.sonyericsson.android.camera.controller.StateMachine$CaptureState;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;
import com.sonyericsson.android.camera.view.baselayout.BaseLayoutPattern;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

/* synthetic */ class ViewFinderImpl$32 {
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$NavigatorContents;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger = new int[ViewFinderImpl$PredictiveLaunchHideTrigger.values().length];
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType;

    static {
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger[ViewFinderImpl$PredictiveLaunchHideTrigger.HW_CAMERA_KEY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger[ViewFinderImpl$PredictiveLaunchHideTrigger.SIDE_SENSING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger[ViewFinderImpl$PredictiveLaunchHideTrigger.VOLUME_KEY_SHUTTER.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger[ViewFinderImpl$PredictiveLaunchHideTrigger.TOUCH_UP_CAPTURE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType = new int[SavingTaskManager$SavedFileType.values().length];
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[SavingTaskManager$SavedFileType.BURST.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[SavingTaskManager$SavedFileType.PHOTO_DURING_REC.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[SavingTaskManager$SavedFileType.PHOTO.ordinal()] = 3;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[SavingTaskManager$SavedFileType.VIDEO.ordinal()] = 4;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[SavingTaskManager$SavedFileType.TIME_SHIFT.ordinal()] = 5;
        } catch (NoSuchFieldError unused9) {
        }
        $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState = new int[Storage$StorageState.values().length];
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState[Storage$StorageState.AVAILABLE.ordinal()] = 1;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState[Storage$StorageState.AVAILABLE_NEAR_FULL.ordinal()] = 2;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState[Storage$StorageState.FULL.ordinal()] = 3;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState[Storage$StorageState.UNAVAILABLE.ordinal()] = 4;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState[Storage$StorageState.REMOVED.ordinal()] = 5;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState[Storage$StorageState.READ_ONLY.ordinal()] = 6;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState[Storage$StorageState.CORRUPT.ordinal()] = 7;
        } catch (NoSuchFieldError unused16) {
        }
        $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType = new int[Storage$StorageType.values().length];
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType[Storage$StorageType.EXTERNAL_CARD.ordinal()] = 1;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType[Storage$StorageType.INTERNAL.ordinal()] = 2;
        } catch (NoSuchFieldError unused18) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType = new int[TutorialController$TutorialType.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.VIDEO_FUSION.ordinal()] = 1;
        } catch (NoSuchFieldError unused19) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[TutorialController$TutorialType.MANUAL_FUSION.ordinal()] = 2;
        } catch (NoSuchFieldError unused20) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId = new int[DialogId.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL.ordinal()] = 1;
        } catch (NoSuchFieldError unused21) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL.ordinal()] = 2;
        } catch (NoSuchFieldError unused22) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MEMORY_FULL_PROPOSE_CHANGE_TO_SD.ordinal()] = 3;
        } catch (NoSuchFieldError unused23) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD.ordinal()] = 4;
        } catch (NoSuchFieldError unused24) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU.ordinal()] = 5;
        } catch (NoSuchFieldError unused25) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.THERMAL_NOTE.ordinal()] = 6;
        } catch (NoSuchFieldError unused26) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.LOCATION_SERVICE_DISABLE_ON_LAUNCH.ordinal()] = 7;
        } catch (NoSuchFieldError unused27) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS.ordinal()] = 8;
        } catch (NoSuchFieldError unused28) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE.ordinal()] = 9;
        } catch (NoSuchFieldError unused29) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP.ordinal()] = 10;
        } catch (NoSuchFieldError unused30) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE.ordinal()] = 11;
        } catch (NoSuchFieldError unused31) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS.ordinal()] = 12;
        } catch (NoSuchFieldError unused32) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.RESET_CONFIRMATION.ordinal()] = 13;
        } catch (NoSuchFieldError unused33) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.REQUEST_SD_CARD_PERMISSION.ordinal()] = 14;
        } catch (NoSuchFieldError unused34) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.SD_CARD_PERMISSION_UNAVAILABLE.ordinal()] = 15;
        } catch (NoSuchFieldError unused35) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.ERROR_IN_USE_BY_ANOTHER_APPLICATION.ordinal()] = 16;
        } catch (NoSuchFieldError unused36) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.ERROR_UNKNOWN.ordinal()] = 17;
        } catch (NoSuchFieldError unused37) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.ERROR_USE_OF_CAMERA_RESTRICTED.ordinal()] = 18;
        } catch (NoSuchFieldError unused38) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MEMORY_SHORTAGE_ON_ONE_SHOT_VIDEO.ordinal()] = 19;
        } catch (NoSuchFieldError unused39) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.COULD_NOT_SAVE_PHOTO.ordinal()] = 20;
        } catch (NoSuchFieldError unused40) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.COULD_NOT_START_RECORDING.ordinal()] = 21;
        } catch (NoSuchFieldError unused41) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.THERMAL_CRITICAL.ordinal()] = 22;
        } catch (NoSuchFieldError unused42) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.LOW_BATTERY_CRITICAL_ON_RECORDING.ordinal()] = 23;
        } catch (NoSuchFieldError unused43) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.LOW_BATTERY_CRITICAL_ON_PHOTO.ordinal()] = 24;
        } catch (NoSuchFieldError unused44) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MEMORY_SD_UNAVAILABLE_FOR_CORRUPT.ordinal()] = 25;
        } catch (NoSuchFieldError unused45) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MEMORY_FULL.ordinal()] = 26;
        } catch (NoSuchFieldError unused46) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MEMORY_SD_UNAVAILABLE.ordinal()] = 27;
        } catch (NoSuchFieldError unused47) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MEMORY_INTERNAL_UNAVAILABLE.ordinal()] = 28;
        } catch (NoSuchFieldError unused48) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MAX_FILESIZE_REACHED.ordinal()] = 29;
        } catch (NoSuchFieldError unused49) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.MAX_DURATION_REACHED.ordinal()] = 30;
        } catch (NoSuchFieldError unused50) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[DialogId.PREDICTIVE_LAUNCH_DESCRIPTION.ordinal()] = 31;
        } catch (NoSuchFieldError unused51) {
        }
        $SwitchMap$com$sonyericsson$android$camera$NavigatorContents = new int[NavigatorContents.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$NavigatorContents[NavigatorContents.SUPERIOR_AUTO.ordinal()] = 1;
        } catch (NoSuchFieldError unused52) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$NavigatorContents[NavigatorContents.VIDEO.ordinal()] = 2;
        } catch (NoSuchFieldError unused53) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview = new int[AutoReview.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview[AutoReview.ALWAYS.ordinal()] = 1;
        } catch (NoSuchFieldError unused54) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview[AutoReview.FRONT_ONLY.ordinal()] = 2;
        } catch (NoSuchFieldError unused55) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview[AutoReview.OFF.ordinal()] = 3;
        } catch (NoSuchFieldError unused56) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason = new int[ViewFinder$BurstRejectedReason.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason[ViewFinder$BurstRejectedReason.CANNOT_BURST_IN_DARK_CONDITION.ordinal()] = 1;
        } catch (NoSuchFieldError unused57) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason[ViewFinder$BurstRejectedReason.CANNOT_BURST_USING_FRONT_CAMERA.ordinal()] = 2;
        } catch (NoSuchFieldError unused58) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason[ViewFinder$BurstRejectedReason.CANNOT_BURST_DUE_TO_FUSION_MODE.ordinal()] = 3;
        } catch (NoSuchFieldError unused59) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason[ViewFinder$BurstRejectedReason.BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING.ordinal()] = 4;
        } catch (NoSuchFieldError unused60) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent = new int[ViewFinder$ViewUpdateEvent.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY.ordinal()] = 1;
        } catch (NoSuchFieldError unused61) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_RESIZE_EVF_SCOPE.ordinal()] = 2;
        } catch (NoSuchFieldError unused62) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_PREPARE_RECORDING_INDICATOR.ordinal()] = 3;
        } catch (NoSuchFieldError unused63) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURING_MODE_CHANGED.ordinal()] = 4;
        } catch (NoSuchFieldError unused64) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_DETECTED_SCENE_CHANGED.ordinal()] = 5;
        } catch (NoSuchFieldError unused65) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTION_STARTED.ordinal()] = 6;
        } catch (NoSuchFieldError unused66) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTED.ordinal()] = 7;
        } catch (NoSuchFieldError unused67) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_OBJECT_TRACKING_STARTED.ordinal()] = 8;
        } catch (NoSuchFieldError unused68) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_OBJECT_TRACKING_TIMEOUT.ordinal()] = 9;
        } catch (NoSuchFieldError unused69) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_OBJECT_TRACKING_STOP.ordinal()] = 10;
        } catch (NoSuchFieldError unused70) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED.ordinal()] = 11;
        } catch (NoSuchFieldError unused71) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_START.ordinal()] = 12;
        } catch (NoSuchFieldError unused72) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_STOP.ordinal()] = 13;
        } catch (NoSuchFieldError unused73) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_CHANGED.ordinal()] = 14;
        } catch (NoSuchFieldError unused74) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_SELFTIMER_FINISHED.ordinal()] = 15;
        } catch (NoSuchFieldError unused75) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_SELECTED.ordinal()] = 16;
        } catch (NoSuchFieldError unused76) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED.ordinal()] = 17;
        } catch (NoSuchFieldError unused77) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE.ordinal()] = 18;
        } catch (NoSuchFieldError unused78) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_TOUCH_FOCUS.ordinal()] = 19;
        } catch (NoSuchFieldError unused79) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_BY_SELECT_FACE.ordinal()] = 20;
        } catch (NoSuchFieldError unused80) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_RECORDING_PROGRESS.ordinal()] = 21;
        } catch (NoSuchFieldError unused81) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED.ordinal()] = 22;
        } catch (NoSuchFieldError unused82) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_UPDATE_DIALOGS.ordinal()] = 23;
        } catch (NoSuchFieldError unused83) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_CLOSE_ALL_DIALOGS.ordinal()] = 24;
        } catch (NoSuchFieldError unused84) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SHOW_INSTANT_VIEWER.ordinal()] = 25;
        } catch (NoSuchFieldError unused85) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_STORE_COMPLETED.ordinal()] = 26;
        } catch (NoSuchFieldError unused86) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION.ordinal()] = 27;
        } catch (NoSuchFieldError unused87) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_LAZY_INITIALIZATION_TASK_RUN.ordinal()] = 28;
        } catch (NoSuchFieldError unused88) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_ADD_VIDEO_CHAPTER.ordinal()] = 29;
        } catch (NoSuchFieldError unused89) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_THERMAL_NORMAL.ordinal()] = 30;
        } catch (NoSuchFieldError unused90) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_THERMAL_WARNING.ordinal()] = 31;
        } catch (NoSuchFieldError unused91) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_THERMAL_CRITICAL.ordinal()] = 32;
        } catch (NoSuchFieldError unused92) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY.ordinal()] = 33;
        } catch (NoSuchFieldError unused93) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_GRID_LINE.ordinal()] = 34;
        } catch (NoSuchFieldError unused94) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ANGLE_CHANGE_START.ordinal()] = 35;
        } catch (NoSuchFieldError unused95) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ANGLE_CHANGE_COMPLETED.ordinal()] = 36;
        } catch (NoSuchFieldError unused96) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_REJECTED.ordinal()] = 37;
        } catch (NoSuchFieldError unused97) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_SHUTTER_DONE.ordinal()] = 38;
        } catch (NoSuchFieldError unused98) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_FINISH.ordinal()] = 39;
        } catch (NoSuchFieldError unused99) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURE_FINISH.ordinal()] = 40;
        } catch (NoSuchFieldError unused100) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURE_CANCEL.ordinal()] = 41;
        } catch (NoSuchFieldError unused101) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_MAX_DURATION_REACHED.ordinal()] = 42;
        } catch (NoSuchFieldError unused102) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_MAX_FILESIZE_REACHED.ordinal()] = 43;
        } catch (NoSuchFieldError unused103) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_BATTERY_CRITICAL.ordinal()] = 44;
        } catch (NoSuchFieldError unused104) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_UPDATE_FUSION_MODE.ordinal()] = 45;
        } catch (NoSuchFieldError unused105) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_ISO_CHANGED_BY_FUSION.ordinal()] = 46;
        } catch (NoSuchFieldError unused106) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_SHOW_BLACK_SCREEN.ordinal()] = 47;
        } catch (NoSuchFieldError unused107) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_HIDE_BLACK_SCREEN.ordinal()] = 48;
        } catch (NoSuchFieldError unused108) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_FUSION_CONDITION.ordinal()] = 49;
        } catch (NoSuchFieldError unused109) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_VIDEO_HDR_CONDITION.ordinal()] = 50;
        } catch (NoSuchFieldError unused110) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURING_MODE_CHANGING.ordinal()] = 51;
        } catch (NoSuchFieldError unused111) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY.ordinal()] = 52;
        } catch (NoSuchFieldError unused112) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE.ordinal()] = 53;
        } catch (NoSuchFieldError unused113) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_MRU_SHORTCUT.ordinal()] = 54;
        } catch (NoSuchFieldError unused114) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_APPS_UI_MODE_FINISH.ordinal()] = 55;
        } catch (NoSuchFieldError unused115) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SHOW_UNLOCK_SCREEN_DIALOG.ordinal()] = 56;
        } catch (NoSuchFieldError unused116) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind = new int[ViewFinder$UiComponentKind.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.NOTICE_DIALOG.ordinal()] = 1;
        } catch (NoSuchFieldError unused117) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.FLASH_DIALOG.ordinal()] = 2;
        } catch (NoSuchFieldError unused118) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.SELF_TIMER_DIALOG.ordinal()] = 3;
        } catch (NoSuchFieldError unused119) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.ASPECT_RATIO_DIALOG.ordinal()] = 4;
        } catch (NoSuchFieldError unused120) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.FUSION_MODE_DIALOG.ordinal()] = 5;
        } catch (NoSuchFieldError unused121) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.VIDEO_HDR_DIALOG.ordinal()] = 6;
        } catch (NoSuchFieldError unused122) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.HDR_DIALOG.ordinal()] = 7;
        } catch (NoSuchFieldError unused123) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.SETTING_DIALOG.ordinal()] = 8;
        } catch (NoSuchFieldError unused124) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.MODE_SELECTOR.ordinal()] = 9;
        } catch (NoSuchFieldError unused125) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.REVIEW_WINDOW.ordinal()] = 10;
        } catch (NoSuchFieldError unused126) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.OVERLAY_CONTROL_SEEKING.ordinal()] = 11;
        } catch (NoSuchFieldError unused127) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[ViewFinder$UiComponentKind.TUTORIAL.ordinal()] = 12;
        } catch (NoSuchFieldError unused128) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern = new int[BaseLayoutPattern.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[BaseLayoutPattern.RECORDING.ordinal()] = 1;
        } catch (NoSuchFieldError unused129) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[BaseLayoutPattern.ZOOMING_IN_RECORDING.ordinal()] = 2;
        } catch (NoSuchFieldError unused130) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[BaseLayoutPattern.PAUSE_RECORDING.ordinal()] = 3;
        } catch (NoSuchFieldError unused131) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[BaseLayoutPattern.ZOOMING_IN_PAUSE_RECORDING.ordinal()] = 4;
        } catch (NoSuchFieldError unused132) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[BaseLayoutPattern.ZOOMING.ordinal()] = 5;
        } catch (NoSuchFieldError unused133) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[BaseLayoutPattern.FOCUS_SEARCHING.ordinal()] = 6;
        } catch (NoSuchFieldError unused134) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[BaseLayoutPattern.FOCUS_DONE.ordinal()] = 7;
        } catch (NoSuchFieldError unused135) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture = new int[TouchCapture.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture[TouchCapture.ON.ordinal()] = 1;
        } catch (NoSuchFieldError unused136) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture[TouchCapture.FRONT_ONLY.ordinal()] = 2;
        } catch (NoSuchFieldError unused137) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree = new int[AnimationRequest$AnimationDegree.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[AnimationRequest$AnimationDegree.START.ordinal()] = 1;
        } catch (NoSuchFieldError unused138) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[AnimationRequest$AnimationDegree.EXEC.ordinal()] = 2;
        } catch (NoSuchFieldError unused139) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[AnimationRequest$AnimationDegree.CANCEL.ordinal()] = 3;
        } catch (NoSuchFieldError unused140) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[AnimationRequest$AnimationDegree.FINISH.ordinal()] = 4;
        } catch (NoSuchFieldError unused141) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType = new int[AnimationRequest$AnimationType.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType[AnimationRequest$AnimationType.MODE_TOUCH.ordinal()] = 1;
        } catch (NoSuchFieldError unused142) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType[AnimationRequest$AnimationType.MODE_ICON.ordinal()] = 2;
        } catch (NoSuchFieldError unused143) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType[AnimationRequest$AnimationType.MODE_SELECTOR.ordinal()] = 3;
        } catch (NoSuchFieldError unused144) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType[AnimationRequest$AnimationType.MRU_SHORTCUT.ordinal()] = 4;
        } catch (NoSuchFieldError unused145) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType[AnimationRequest$AnimationType.SWITCH_TOUCH.ordinal()] = 5;
        } catch (NoSuchFieldError unused146) {
        }
        $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState = new int[StateMachine$CaptureState.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_NONE.ordinal()] = 1;
        } catch (NoSuchFieldError unused147) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_INITIALIZE.ordinal()] = 2;
        } catch (NoSuchFieldError unused148) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_RESUME.ordinal()] = 3;
        } catch (NoSuchFieldError unused149) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_PHOTO_READY.ordinal()] = 4;
        } catch (NoSuchFieldError unused150) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_VIDEO_READY.ordinal()] = 5;
        } catch (NoSuchFieldError unused151) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_CAPTURE_COUNTDOWN.ordinal()] = 6;
        } catch (NoSuchFieldError unused152) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_OPERATION_RESTRICTED.ordinal()] = 7;
        } catch (NoSuchFieldError unused153) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_PHOTO_AF_SEARCH.ordinal()] = 8;
        } catch (NoSuchFieldError unused154) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_PHOTO_AF_DONE.ordinal()] = 9;
        } catch (NoSuchFieldError unused155) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE.ordinal()] = 10;
        } catch (NoSuchFieldError unused156) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE.ordinal()] = 11;
        } catch (NoSuchFieldError unused157) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_PHOTO_CAPTURE.ordinal()] = 12;
        } catch (NoSuchFieldError unused158) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_BURST_CAPTURE.ordinal()] = 13;
        } catch (NoSuchFieldError unused159) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_VIDEO_RECORDING.ordinal()] = 14;
        } catch (NoSuchFieldError unused160) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_VIDEO_CAPTURE_WHILE_RECORDING.ordinal()] = 15;
        } catch (NoSuchFieldError unused161) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING.ordinal()] = 16;
        } catch (NoSuchFieldError unused162) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_VIDEO_STORE.ordinal()] = 17;
        } catch (NoSuchFieldError unused163) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_FATAL.ordinal()] = 18;
        } catch (NoSuchFieldError unused164) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_PAUSE.ordinal()] = 19;
        } catch (NoSuchFieldError unused165) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_WARNING.ordinal()] = 20;
        } catch (NoSuchFieldError unused166) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_FINALIZE.ordinal()] = 21;
        } catch (NoSuchFieldError unused167) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_VIDEO_RECORDING_PAUSING.ordinal()] = 22;
        } catch (NoSuchFieldError unused168) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_CAMERA_SWITCHING.ordinal()] = 23;
        } catch (NoSuchFieldError unused169) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_PHOTO_READY_FOR_RECORDING.ordinal()] = 24;
        } catch (NoSuchFieldError unused170) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_MODE_CHANGING.ordinal()] = 25;
        } catch (NoSuchFieldError unused171) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_WAITING_EVF_PREPARED_IN_MODE_CHANGE.ordinal()] = 26;
        } catch (NoSuchFieldError unused172) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_HIGH_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION.ordinal()] = 27;
        } catch (NoSuchFieldError unused173) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_LOW_FRAME_RATE_VIDEO_RECORDING_IN_SUPER_SLOW_MOTION.ordinal()] = 28;
        } catch (NoSuchFieldError unused174) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[StateMachine$CaptureState.STATE_WAIT_FOR_HIGH_FRAME_RATE_VIDEO_RECORDING_DONE.ordinal()] = 29;
        } catch (NoSuchFieldError unused175) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion = new int[SlowMotion.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[SlowMotion.SUPER_SLOW_MOTION.ordinal()] = 1;
        } catch (NoSuchFieldError unused176) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[SlowMotion.SUPER_SLOW_SHOT.ordinal()] = 2;
        } catch (NoSuchFieldError unused177) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[SlowMotion.STANDARD_SLOW_MOTION.ordinal()] = 3;
        } catch (NoSuchFieldError unused178) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer = new int[SelfTimer.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[SelfTimer.LONG.ordinal()] = 1;
        } catch (NoSuchFieldError unused179) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[SelfTimer.GESTURE_SHUTTER_COUNT_DOWN.ordinal()] = 2;
        } catch (NoSuchFieldError unused180) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[SelfTimer.SHORT.ordinal()] = 3;
        } catch (NoSuchFieldError unused181) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[SelfTimer.LAUNCH_AND_CAPTURE_COUNT_DOWN.ordinal()] = 4;
        } catch (NoSuchFieldError unused182) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[SelfTimer.OFF.ordinal()] = 5;
        } catch (NoSuchFieldError unused183) {
        }
        $SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction = new int[AbstractDraggingEventHandler$Direction.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction[AbstractDraggingEventHandler$Direction.UP.ordinal()] = 1;
        } catch (NoSuchFieldError unused184) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction[AbstractDraggingEventHandler$Direction.DOWN.ordinal()] = 2;
        } catch (NoSuchFieldError unused185) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction[AbstractDraggingEventHandler$Direction.LEFT.ordinal()] = 3;
        } catch (NoSuchFieldError unused186) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction[AbstractDraggingEventHandler$Direction.RIGHT.ordinal()] = 4;
        } catch (NoSuchFieldError unused187) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey = new int[UserSettingKey.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.SIDE_SENSE.ordinal()] = 1;
        } catch (NoSuchFieldError unused188) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.GEO_TAG.ordinal()] = 2;
        } catch (NoSuchFieldError unused189) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.DESTINATION_TO_SAVE.ordinal()] = 3;
        } catch (NoSuchFieldError unused190) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.HELP_GUIDE.ordinal()] = 4;
        } catch (NoSuchFieldError unused191) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.RESET_SETTINGS.ordinal()] = 5;
        } catch (NoSuchFieldError unused192) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.WHITE_BALANCE.ordinal()] = 6;
        } catch (NoSuchFieldError unused193) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[UserSettingKey.EV.ordinal()] = 7;
        } catch (NoSuchFieldError unused194) {
        }
        $SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation = new int[LaunchCondition$ExtraOperation.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation[LaunchCondition$ExtraOperation.OPEN_SETTINGS_MENU.ordinal()] = 1;
        } catch (NoSuchFieldError unused195) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState = new int[ViewFinder$HeadUpDisplaySetupState.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.PHOTO_READY.ordinal()] = 1;
        } catch (NoSuchFieldError unused196) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.PHOTO_CAPTURE.ordinal()] = 2;
        } catch (NoSuchFieldError unused197) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.PHOTO_BURST_CAPTURE.ordinal()] = 3;
        } catch (NoSuchFieldError unused198) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.VIDEO_READY.ordinal()] = 4;
        } catch (NoSuchFieldError unused199) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.VIDEO_RECORDING.ordinal()] = 5;
        } catch (NoSuchFieldError unused200) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_MOTION_STANDBY.ordinal()] = 6;
        } catch (NoSuchFieldError unused201) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_MOTION_RECORDING.ordinal()] = 7;
        } catch (NoSuchFieldError unused202) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.STANDARD_SLOW_MOTION_STANDBY.ordinal()] = 8;
        } catch (NoSuchFieldError unused203) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.STANDARD_SLOW_MOTION_RECORDING.ordinal()] = 9;
        } catch (NoSuchFieldError unused204) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_SHOT_STANDBY.ordinal()] = 10;
        } catch (NoSuchFieldError unused205) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[ViewFinder$HeadUpDisplaySetupState.VIDEO_PAUSING.ordinal()] = 11;
        } catch (NoSuchFieldError unused206) {
        }
        $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea = new int[SideTouchEventDetector$SideTouchArea.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea[SideTouchEventDetector$SideTouchArea.TOP.ordinal()] = 1;
        } catch (NoSuchFieldError unused207) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea[SideTouchEventDetector$SideTouchArea.BOTTOM.ordinal()] = 2;
        } catch (NoSuchFieldError unused208) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea[SideTouchEventDetector$SideTouchArea.LEFT.ordinal()] = 3;
        } catch (NoSuchFieldError unused209) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea[SideTouchEventDetector$SideTouchArea.RIGHT.ordinal()] = 4;
        } catch (NoSuchFieldError unused210) {
        }
        $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode = new int[CapturingMode.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SCENE_RECOGNITION.ordinal()] = 1;
        } catch (NoSuchFieldError unused211) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SUPERIOR_FRONT.ordinal()] = 2;
        } catch (NoSuchFieldError unused212) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.VIDEO.ordinal()] = 3;
        } catch (NoSuchFieldError unused213) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.FRONT_VIDEO.ordinal()] = 4;
        } catch (NoSuchFieldError unused214) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.NORMAL.ordinal()] = 5;
        } catch (NoSuchFieldError unused215) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.FRONT_PHOTO.ordinal()] = 6;
        } catch (NoSuchFieldError unused216) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[CapturingMode.SLOW_MOTION.ordinal()] = 7;
        } catch (NoSuchFieldError unused217) {
        }
        $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode = new int[ModeSelectorInternalMode.values().length];
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode[ModeSelectorInternalMode.PORTRAIT_SELFIE.ordinal()] = 1;
        } catch (NoSuchFieldError unused218) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode[ModeSelectorInternalMode.DUAL_BACKGROUND_DEFOCUS.ordinal()] = 2;
        } catch (NoSuchFieldError unused219) {
        }
        try {
            $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode[ModeSelectorInternalMode.DUAL_MONOCHROME.ordinal()] = 3;
        } catch (NoSuchFieldError unused220) {
        }
    }
}
