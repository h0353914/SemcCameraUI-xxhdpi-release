package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.SideTouchEventDetector;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CameraKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FocusRange;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.ObjectTracking;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.controller.StateMachine;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$MeasurementKey;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator$TranslatedKeyCode;
import com.sonyericsson.cameracommon.storage.Storage;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;
import com.sonymobile.cameracommon.research.parameters.Event$SelfTimerTrigger;

/* JADX INFO: loaded from: classes.dex */
public class UserEventHandler {
    private static final String TAG = "UserEventHandler";
    private final CameraActivity mActivity;
    private boolean mIsBurstShotEnabled;
    private final KeyEventTranslator mKeyEventTranslator;
    private final MessageSettings mMessageSettings;
    private final SideTouchEventDetector mSideTouchCameraGestureDetector;
    private final StateMachine mStateMachine;
    private final Storage mStorage;
    private final UserSettings mUserSettings;
    private final ViewFinderImpl mViewFinder;
    private UserEventHandler$ActionByKey mActionByKey = UserEventHandler$ActionByKey.NONE;
    private final UserEventHandler$TouchEventProcedureManager mTouchEventProcedures = new UserEventHandler$TouchEventProcedureManager(this);
    private UserEventHandler$EventSource mHandlingEventSource = null;
    private final UserEventHandler$AngleActionHandler mAngleActionHandler = new UserEventHandler$AngleActionHandler(this, null);

    static /* synthetic */ void access$1000(UserEventHandler userEventHandler, UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, Point point) {
        userEventHandler.dispatchClick(userEventHandler$TouchEventSource, point);
    }

    static /* synthetic */ void access$1100(UserEventHandler userEventHandler, UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, Point point) {
        userEventHandler.dispatchLongClick(userEventHandler$TouchEventSource, point);
    }

    static /* synthetic */ void access$1200(UserEventHandler userEventHandler, UserEventHandler$TouchEventSource userEventHandler$TouchEventSource) {
        userEventHandler.dispatchTouchCancel(userEventHandler$TouchEventSource);
    }

    static /* synthetic */ void access$1300(UserEventHandler userEventHandler, UserEventHandler$TouchEventSource userEventHandler$TouchEventSource) {
        userEventHandler.dispatchCaptureAreaScaleReady(userEventHandler$TouchEventSource);
    }

    static /* synthetic */ void access$1400(UserEventHandler userEventHandler, UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, float f) {
        userEventHandler.dispatchCaptureAreaScaling(userEventHandler$TouchEventSource, f);
    }

    static /* synthetic */ void access$1500(UserEventHandler userEventHandler) {
        userEventHandler.resetSideTouchEventHandling();
    }

    static /* synthetic */ boolean access$1600(UserEventHandler userEventHandler, MotionEvent motionEvent) {
        return userEventHandler.dispatchSideTouchEvent(motionEvent);
    }

    static /* synthetic */ boolean access$1700(UserEventHandler userEventHandler, UserEventHandler$VirtualKeyEvent userEventHandler$VirtualKeyEvent) {
        return userEventHandler.dispatchVirtualKeyEvent(userEventHandler$VirtualKeyEvent);
    }

    static /* synthetic */ void access$300(UserEventHandler userEventHandler) {
        userEventHandler.resetKeyEventHandling();
    }

    static /* synthetic */ ViewFinderImpl access$3200(UserEventHandler userEventHandler) {
        return userEventHandler.mViewFinder;
    }

    static /* synthetic */ boolean access$3300(UserEventHandler userEventHandler) {
        return userEventHandler.notifyEventReady();
    }

    static /* synthetic */ StateMachine access$3400(UserEventHandler userEventHandler) {
        return userEventHandler.mStateMachine;
    }

    static /* synthetic */ StateMachine$TransitterEvent access$3500(UserEventHandler userEventHandler, boolean z) {
        return userEventHandler.selectDefaultPhotoAction(z);
    }

    static /* synthetic */ boolean access$3600(UserEventHandler userEventHandler) {
        return userEventHandler.notifyEventCaptureBurst();
    }

    static /* synthetic */ UserEventHandler$AngleActionHandler access$3700(UserEventHandler userEventHandler) {
        return userEventHandler.mAngleActionHandler;
    }

    static /* synthetic */ boolean access$3900(UserEventHandler userEventHandler) {
        return userEventHandler.isCurrentStorageWritable();
    }

    static /* synthetic */ boolean access$400(UserEventHandler userEventHandler, KeyEvent keyEvent) {
        return userEventHandler.dispatchKeyDown(keyEvent);
    }

    static /* synthetic */ void access$4000(UserEventHandler userEventHandler, boolean z) {
        userEventHandler.notifyShutterKeyEvent(z);
    }

    static /* synthetic */ UserSettings access$4600(UserEventHandler userEventHandler) {
        return userEventHandler.mUserSettings;
    }

    static /* synthetic */ boolean access$4700(UserEventHandler userEventHandler) {
        return userEventHandler.isSuperSlowMode();
    }

    static /* synthetic */ boolean access$4900(UserEventHandler userEventHandler) {
        return userEventHandler.isTouchCaptureEnabled();
    }

    static /* synthetic */ boolean access$500(UserEventHandler userEventHandler, KeyEvent keyEvent) {
        return userEventHandler.dispatchKeyUp(keyEvent);
    }

    static /* synthetic */ StateMachine$TransitterEvent access$5000(UserEventHandler userEventHandler) {
        return userEventHandler.selectDefaultVideoAction();
    }

    static /* synthetic */ boolean access$5100(UserEventHandler userEventHandler) {
        return userEventHandler.canObjectTracking();
    }

    static /* synthetic */ boolean access$5500(UserEventHandler userEventHandler) {
        return userEventHandler.isInternalStorageWritable();
    }

    static /* synthetic */ boolean access$5600(UserEventHandler userEventHandler) {
        return userEventHandler.isBurstShotEnabled();
    }

    static /* synthetic */ UserEventHandler$EventSource access$5700(UserEventHandler userEventHandler) {
        return userEventHandler.mHandlingEventSource;
    }

    static /* synthetic */ void access$5800(UserEventHandler userEventHandler, UserEventHandler$EventSource userEventHandler$EventSource) {
        userEventHandler.notifyBurstShotRejectedReason(userEventHandler$EventSource);
    }

    static /* synthetic */ boolean access$5900(UserEventHandler userEventHandler) {
        return userEventHandler.canSelfTimerActivation();
    }

    static /* synthetic */ boolean access$600(UserEventHandler userEventHandler, KeyEvent keyEvent) {
        return userEventHandler.dispatchKeyLongPress(keyEvent);
    }

    static /* synthetic */ CapturingMode access$6000(UserEventHandler userEventHandler) {
        return userEventHandler.getCurrentCapturingMode();
    }

    static /* synthetic */ boolean access$6100(UserEventHandler userEventHandler, UserEventHandler$EventSource userEventHandler$EventSource) {
        return userEventHandler.startEventHandling(userEventHandler$EventSource);
    }

    static /* synthetic */ boolean access$6200(UserEventHandler userEventHandler, UserEventHandler$EventSource userEventHandler$EventSource) {
        return userEventHandler.isEventAccepted(userEventHandler$EventSource);
    }

    static /* synthetic */ UserEventHandler$ActionByKey access$6300(UserEventHandler userEventHandler) {
        return userEventHandler.mActionByKey;
    }

    static /* synthetic */ void access$700(UserEventHandler userEventHandler) {
        userEventHandler.resetTouchEventHandling();
    }

    static /* synthetic */ void access$800(UserEventHandler userEventHandler, UserEventHandler$TouchEventSource userEventHandler$TouchEventSource) {
        userEventHandler.dispatchTouchDown(userEventHandler$TouchEventSource);
    }

    static /* synthetic */ void access$900(UserEventHandler userEventHandler, UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, Point point) {
        userEventHandler.dispatchTouchUp(userEventHandler$TouchEventSource, point);
    }

    public UserEventHandler(CameraActivity cameraActivity, ViewFinderImpl viewFinderImpl, StateMachine stateMachine, Storage storage, UserSettings userSettings, MessageSettings messageSettings, boolean z) {
        this.mActivity = cameraActivity;
        this.mViewFinder = viewFinderImpl;
        this.mStateMachine = stateMachine;
        this.mStorage = storage;
        this.mUserSettings = userSettings;
        this.mMessageSettings = messageSettings;
        this.mKeyEventTranslator = new KeyEventTranslator(this.mUserSettings);
        this.mIsBurstShotEnabled = z;
        this.mSideTouchCameraGestureDetector = new SideTouchEventDetector(cameraActivity, new UserEventHandler$OnSideTouchGestureListenerImpl(this, null));
    }

    public void release() {
        this.mSideTouchCameraGestureDetector.unregister();
    }

    private boolean startEventHandling(UserEventHandler$EventSource userEventHandler$EventSource) {
        if (this.mHandlingEventSource == null) {
            this.mHandlingEventSource = userEventHandler$EventSource;
            return true;
        }
        if (!UserEventHandler$KeyEventSource.access$1800().equals(this.mHandlingEventSource) || !UserEventHandler$KeyEventSource.access$1900().equals(userEventHandler$EventSource)) {
            return false;
        }
        this.mHandlingEventSource = userEventHandler$EventSource;
        return true;
    }

    private void stopEventHandling(UserEventHandler$EventSource userEventHandler$EventSource) {
        if (this.mHandlingEventSource != null && this.mHandlingEventSource.equals(userEventHandler$EventSource)) {
            this.mHandlingEventSource = null;
        }
    }

    private void resetKeyEventHandling() {
        this.mKeyEventTranslator.reset();
        if (this.mHandlingEventSource instanceof UserEventHandler$KeyEventSource) {
            this.mHandlingEventSource = null;
            this.mActionByKey = UserEventHandler$ActionByKey.NONE;
        }
        UserEventHandler$AngleActionHandler.access$2000(this.mAngleActionHandler);
    }

    private void resetTouchEventHandling() {
        if (this.mHandlingEventSource instanceof UserEventHandler$TouchEventSource) {
            this.mHandlingEventSource = null;
        }
        UserEventHandler$AngleActionHandler.access$2000(this.mAngleActionHandler);
    }

    private void resetSideTouchEventHandling() {
        if (this.mHandlingEventSource instanceof UserEventHandler$SideTouchEventSource) {
            this.mHandlingEventSource = null;
        }
        UserEventHandler$AngleActionHandler.access$2000(this.mAngleActionHandler);
    }

    private boolean isEventAccepted(UserEventHandler$EventSource userEventHandler$EventSource) {
        return this.mHandlingEventSource == null || this.mHandlingEventSource.equals(userEventHandler$EventSource);
    }

    private void dispatchTouchDown(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource) {
        if (!startEventHandling(userEventHandler$TouchEventSource)) {
            CamLog.i("dispatchTouchDown() startEventHandling() not accepted. requested:" + userEventHandler$TouchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        UserEventHandler$TouchEventProcedure userEventHandler$TouchEventProcedureFind = this.mTouchEventProcedures.find(userEventHandler$TouchEventSource);
        if (userEventHandler$TouchEventProcedureFind != null) {
            userEventHandler$TouchEventProcedureFind.doTouchDown();
        }
    }

    private void dispatchTouchUp(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, Point point) {
        this.mActivity.restartAutoPowerOffTimer();
        if (!isEventAccepted(userEventHandler$TouchEventSource)) {
            CamLog.i("dispatchTouchUp() not accepted. requested:" + userEventHandler$TouchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        UserEventHandler$TouchEventProcedure userEventHandler$TouchEventProcedureFind = this.mTouchEventProcedures.find(userEventHandler$TouchEventSource);
        if (userEventHandler$TouchEventProcedureFind != null) {
            userEventHandler$TouchEventProcedureFind.doTouchUp(point);
        }
        stopEventHandling(userEventHandler$TouchEventSource);
    }

    private void dispatchClick(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, Point point) {
        if (!isEventAccepted(userEventHandler$TouchEventSource)) {
            CamLog.i("dispatchClick() not accepted. requested:" + userEventHandler$TouchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        UserEventHandler$TouchEventProcedure userEventHandler$TouchEventProcedureFind = this.mTouchEventProcedures.find(userEventHandler$TouchEventSource);
        if (userEventHandler$TouchEventProcedureFind != null) {
            userEventHandler$TouchEventProcedureFind.doClick(point);
        }
    }

    private void dispatchLongClick(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, Point point) {
        if (!isEventAccepted(userEventHandler$TouchEventSource)) {
            CamLog.i("dispatchLongClick() not accepted. requested:" + userEventHandler$TouchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        UserEventHandler$TouchEventProcedure userEventHandler$TouchEventProcedureFind = this.mTouchEventProcedures.find(userEventHandler$TouchEventSource);
        if (userEventHandler$TouchEventProcedureFind != null) {
            userEventHandler$TouchEventProcedureFind.doLongClick(point);
        }
    }

    private void dispatchTouchCancel(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource) {
        this.mActivity.restartAutoPowerOffTimer();
        if (!isEventAccepted(userEventHandler$TouchEventSource)) {
            CamLog.i("dispatchTouchCancel() not accepted. requested:" + userEventHandler$TouchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        UserEventHandler$TouchEventProcedure userEventHandler$TouchEventProcedureFind = this.mTouchEventProcedures.find(userEventHandler$TouchEventSource);
        if (userEventHandler$TouchEventProcedureFind != null) {
            userEventHandler$TouchEventProcedureFind.doCancel();
        }
        stopEventHandling(userEventHandler$TouchEventSource);
    }

    private void dispatchCaptureAreaScaleReady(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource) {
        if (!isEventAccepted(userEventHandler$TouchEventSource)) {
            CamLog.i("dispatchCaptureAreaScaleReady() not accepted. requested:" + userEventHandler$TouchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        UserEventHandler$TouchEventProcedure userEventHandler$TouchEventProcedureFind = this.mTouchEventProcedures.find(userEventHandler$TouchEventSource);
        if (userEventHandler$TouchEventProcedureFind != null) {
            userEventHandler$TouchEventProcedureFind.doTouchAreaScaleReady();
        }
    }

    private void dispatchCaptureAreaScaling(UserEventHandler$TouchEventSource userEventHandler$TouchEventSource, float f) {
        if (!isEventAccepted(userEventHandler$TouchEventSource)) {
            CamLog.i("dispatchCaptureAreaScaling() not accepted. requested:" + userEventHandler$TouchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        UserEventHandler$TouchEventProcedure userEventHandler$TouchEventProcedureFind = this.mTouchEventProcedures.find(userEventHandler$TouchEventSource);
        if (userEventHandler$TouchEventProcedureFind != null) {
            userEventHandler$TouchEventProcedureFind.doTouchAreaScaling(f);
        }
    }

    private boolean dispatchSideTouchEvent(MotionEvent motionEvent) {
        if (this.mViewFinder == null || this.mViewFinder.isAutoPowerOffWarningDisplayed()) {
            return true;
        }
        return this.mSideTouchCameraGestureDetector.onSideTouchEvent(motionEvent, this.mViewFinder.getOrientation());
    }

    private boolean dispatchVirtualKeyEvent(UserEventHandler$VirtualKeyEvent userEventHandler$VirtualKeyEvent) {
        if (UserEventHandler$1.$SwitchMap$com$sonyericsson$android$camera$view$UserEventHandler$VirtualKeyEvent[userEventHandler$VirtualKeyEvent.ordinal()] != 1 || this.mViewFinder.predictiveLaunchCoverExists() || this.mViewFinder.isMessageDialogOpened()) {
            return false;
        }
        LocalResearchUtil.getInstance().setPredictiveLaunchState(false);
        ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.SMILE_CAPTURE);
        this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_READY, new Object[0]);
        this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE, new Object[0]);
        this.mActivity.restartAutoPowerOffTimer();
        return true;
    }

    private boolean dispatchKeyDownAfterTheSecondTime(KeyEvent keyEvent) {
        if (isEventAccepted(UserEventHandler$KeyEventSource.from(keyEvent.getKeyCode()))) {
            return UserEventHandler$1.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[this.mKeyEventTranslator.translateKeyCodeOnDown(keyEvent.getKeyCode()).ordinal()] != 1;
        }
        CamLog.i("dispatchKeyDownAfterTheSecondTime() not accepted. requested:" + keyEvent.getKeyCode() + " current:" + this.mHandlingEventSource);
        return true;
    }

    private boolean dispatchKeyDownInTheFirstTime(KeyEvent keyEvent) {
        if (!startEventHandling(UserEventHandler$KeyEventSource.from(keyEvent.getKeyCode()))) {
            CamLog.i("dispatchKeyDownInTheFirstTime() startEventHandling() not accepted. requested:" + keyEvent.getKeyCode() + " current:" + this.mHandlingEventSource);
            return true;
        }
        switch (UserEventHandler$1.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[this.mKeyEventTranslator.translateKeyCodeOnDown(keyEvent.getKeyCode()).ordinal()]) {
            case 1:
                return this.mStateMachine.isVideoRecording();
            case 2:
                if (!this.mViewFinder.isUserOperable()) {
                    return true;
                }
                this.mActionByKey = UserEventHandler$ActionByKey.NONE;
                this.mViewFinder.hidePredictiveLaunchCover(ViewFinderImpl$PredictiveLaunchHideTrigger.VOLUME_KEY_ZOOM);
                UserEventHandler$AngleActionHandler.access$2100(this.mAngleActionHandler, keyEvent.getKeyCode() == 24);
                return true;
            case 3:
                if (this.mViewFinder.isFlashAndSettingMenuOpened()) {
                    this.mActionByKey = UserEventHandler$ActionByKey.REJECT;
                    this.mViewFinder.closeDialogs();
                    return true;
                }
                boolean zPredictiveLaunchCoverExists = this.mViewFinder.predictiveLaunchCoverExists();
                this.mViewFinder.hidePredictiveLaunchCover(ViewFinderImpl$PredictiveLaunchHideTrigger.HW_CAMERA_KEY);
                if (notifyEventReady(zPredictiveLaunchCoverExists)) {
                    this.mActionByKey = UserEventHandler$ActionByKey.READY;
                }
                this.mViewFinder.clearCanceledSideTouchEventIcons();
                return true;
            case 4:
                if (!this.mViewFinder.isUserOperable()) {
                    return true;
                }
                if (this.mActionByKey == UserEventHandler$ActionByKey.REJECT) {
                    if (this.mViewFinder.isFlashAndSettingMenuOpened()) {
                        this.mViewFinder.closeDialogs();
                    }
                    return true;
                }
                ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.CAMERA_KEY);
                notifyShutterKeyEvent(true);
                keyEvent.startTracking();
                return true;
            case 5:
            case 6:
                if (this.mViewFinder.isFlashAndSettingMenuOpened()) {
                    this.mActionByKey = UserEventHandler$ActionByKey.REJECT;
                    this.mViewFinder.closeDialogs();
                    return true;
                }
                boolean zPredictiveLaunchCoverExists2 = this.mViewFinder.predictiveLaunchCoverExists();
                this.mViewFinder.hidePredictiveLaunchCover(ViewFinderImpl$PredictiveLaunchHideTrigger.VOLUME_KEY_SHUTTER);
                if (notifyEventReady(zPredictiveLaunchCoverExists2)) {
                    this.mActionByKey = UserEventHandler$ActionByKey.READY;
                }
                keyEvent.startTracking();
                return true;
            case 7:
                LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.CLOSE_INITIAL_RESPONSE);
                if (CamLog.DEBUG) {
                    CamLog.d("CLOSE_INITIAL_RESPONSE : start");
                }
                return true;
            case 8:
            case 9:
            case 10:
                return true;
            default:
                return false;
        }
    }

    private boolean dispatchKeyDown(KeyEvent keyEvent) {
        if (this.mViewFinder == null || this.mViewFinder.isAutoPowerOffWarningDisplayed()) {
            return true;
        }
        if (keyEvent.getRepeatCount() > 0) {
            return dispatchKeyDownAfterTheSecondTime(keyEvent);
        }
        return dispatchKeyDownInTheFirstTime(keyEvent);
    }

    private boolean dispatchKeyUp(KeyEvent keyEvent) {
        if (!isEventAccepted(UserEventHandler$KeyEventSource.from(keyEvent.getKeyCode()))) {
            CamLog.i("dispatchKeyUp() not accepted. requested:" + keyEvent.getKeyCode() + " current:" + this.mHandlingEventSource);
            return true;
        }
        stopEventHandling(UserEventHandler$KeyEventSource.from(keyEvent.getKeyCode()));
        KeyEventTranslator$TranslatedKeyCode keyEventTranslator$TranslatedKeyCodeTranslateKeyCodeOnUp = this.mKeyEventTranslator.translateKeyCodeOnUp(keyEvent.getKeyCode());
        UserEventHandler$ActionByKey userEventHandler$ActionByKey = this.mActionByKey;
        this.mActionByKey = UserEventHandler$ActionByKey.NONE;
        switch (UserEventHandler$1.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[keyEventTranslator$TranslatedKeyCodeTranslateKeyCodeOnUp.ordinal()]) {
            case 1:
                return this.mStateMachine.isVideoRecording();
            case 2:
                UserEventHandler$AngleActionHandler.access$2200(this.mAngleActionHandler);
                return true;
            case 3:
                if (userEventHandler$ActionByKey == UserEventHandler$ActionByKey.READY) {
                    this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
                }
                return true;
            case 4:
                if (userEventHandler$ActionByKey == UserEventHandler$ActionByKey.CAPTURE_BURST) {
                    this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
                }
                return true;
            case 5:
            case 6:
                if (!this.mViewFinder.isUserOperable()) {
                    return true;
                }
                if (userEventHandler$ActionByKey == UserEventHandler$ActionByKey.CAPTURE_BURST) {
                    this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
                    return true;
                }
                if (userEventHandler$ActionByKey == UserEventHandler$ActionByKey.REJECT) {
                    return true;
                }
                ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.VOLUME_KEY);
                notifyShutterKeyEvent(false);
                return true;
            case 7:
                if (this.mViewFinder.isSelfTimerCountDownViewShown()) {
                    this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_SELFTIMER_CANCEL, new Object[0]);
                    return true;
                }
                if (this.mStateMachine.isVideoRecording()) {
                    this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_STOP_RECORDING, new Object[0]);
                    return true;
                }
                if (this.mViewFinder.onHandleBackKeyTutorial() || this.mViewFinder.closeAutoReviewIfShowing() || this.mViewFinder.closeSettingDialogIfOpened() || this.mViewFinder.closeOverlayControlIfOpened() || !this.mStateMachine.canApplicationBeFinished()) {
                    return true;
                }
                CapturingMode currentCapturingMode = getCurrentCapturingMode();
                if (!ModeSelectorInternalMode.exists(currentCapturingMode) && !currentCapturingMode.equals(CapturingMode.FRONT_PHOTO)) {
                    return false;
                }
                this.mViewFinder.startReturnModeAnimation();
                return true;
            case 8:
                if (!this.mViewFinder.isHeadUpDisplayReady() || !this.mViewFinder.isEvfPrepared()) {
                    return true;
                }
                this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_KEY_MENU, new Object[0]);
                return true;
            case 9:
            case 10:
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private boolean dispatchKeyLongPress(KeyEvent keyEvent) {
        if (!isEventAccepted(UserEventHandler$KeyEventSource.from(keyEvent.getKeyCode()))) {
            CamLog.i("dispatchKeyLongPress() not accepted. requested:" + keyEvent.getKeyCode() + " current:" + this.mHandlingEventSource);
            return true;
        }
        switch (UserEventHandler$1.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[this.mKeyEventTranslator.translateKeyCodeOnLongPress(keyEvent.getKeyCode()).ordinal()]) {
            case 4:
                if (this.mActionByKey == UserEventHandler$ActionByKey.CAPTURE) {
                    notifyBurstShotRejectedReason(this.mHandlingEventSource);
                    return true;
                }
                return false;
            case 5:
            case 6:
                if (!this.mViewFinder.isUserOperable() || this.mActionByKey == UserEventHandler$ActionByKey.REJECT) {
                    return true;
                }
                if (notifyEventCaptureBurst()) {
                    this.mActionByKey = UserEventHandler$ActionByKey.CAPTURE_BURST;
                }
                return false;
            default:
                return false;
        }
    }

    private void notifyShutterKeyEvent(boolean z) {
        if (this.mViewFinder.isDisplayFlashScreenDisplayed()) {
        }
        this.mViewFinder.closeDialogs();
        StateMachine$TransitterEvent stateMachine$TransitterEventSelectShutterKeyAction = selectShutterKeyAction(z);
        switch (UserEventHandler$1.$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[stateMachine$TransitterEventSelectShutterKeyAction.ordinal()]) {
            case 1:
                this.mActionByKey = UserEventHandler$ActionByKey.CAPTURE_BURST;
                this.mStateMachine.sendEvent(stateMachine$TransitterEventSelectShutterKeyAction, new Object[0]);
                break;
            case 2:
                this.mActionByKey = UserEventHandler$ActionByKey.CAPTURE;
                this.mStateMachine.sendEvent(stateMachine$TransitterEventSelectShutterKeyAction, new Object[0]);
                break;
            case 3:
                this.mActionByKey = UserEventHandler$ActionByKey.CAPTURE;
                this.mStateMachine.sendEvent(stateMachine$TransitterEventSelectShutterKeyAction, Event$SelfTimerTrigger.NORMAL);
                break;
            default:
                this.mStateMachine.sendEvent(stateMachine$TransitterEventSelectShutterKeyAction, new Object[0]);
                break;
        }
    }

    private StateMachine$TransitterEvent selectShutterKeyAction(boolean z) {
        if (getCurrentCapturingMode().isVideo()) {
            if (isSuperSlowMode() && this.mStateMachine.isVideoRecording()) {
                return StateMachine$TransitterEvent.EVENT_TRIGGER_SLOW_MOTION;
            }
            return selectDefaultVideoAction();
        }
        return selectDefaultPhotoAction(z && isCameraKeyAssignedToBurstShot());
    }

    private StateMachine$TransitterEvent selectDefaultVideoAction() {
        if (this.mStateMachine.isVideoRecording()) {
            return StateMachine$TransitterEvent.EVENT_STOP_RECORDING;
        }
        return StateMachine$TransitterEvent.EVENT_START_RECORDING;
    }

    private StateMachine$TransitterEvent selectDefaultPhotoAction(boolean z) {
        if (isBurstShotEnabled() && z && isInternalStorageWritable()) {
            return StateMachine$TransitterEvent.EVENT_CAPTURE_BURST;
        }
        if (canSelfTimerActivation()) {
            return StateMachine$TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN;
        }
        return StateMachine$TransitterEvent.EVENT_CAPTURE;
    }

    private void notifyBurstShotRejectedReason(UserEventHandler$EventSource userEventHandler$EventSource) {
        if (this.mIsBurstShotEnabled) {
            CapturingMode currentCapturingMode = getCurrentCapturingMode();
            if (currentCapturingMode.isVideo()) {
                return;
            }
            if (PlatformCapability.isManualBurstSupported(currentCapturingMode.getCameraId())) {
                if (!isCameraKeyAssignedToBurstShot() && UserEventHandler$KeyEventSource.access$1900().equals(userEventHandler$EventSource)) {
                    this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_REJECTED, ViewFinder$BurstRejectedReason.BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING);
                    return;
                } else {
                    if (this.mUserSettings.get(UserSettingKey.FUSION_MODE) == FusionMode.ON) {
                        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_REJECTED, ViewFinder$BurstRejectedReason.CANNOT_BURST_DUE_TO_FUSION_MODE);
                        return;
                    }
                    return;
                }
            }
            if ((isCameraKeyAssignedToBurstShot() || !UserEventHandler$KeyEventSource.access$1900().equals(userEventHandler$EventSource)) && PlatformCapability.isManualBurstSupported(CameraInfo$CameraId.BACK)) {
                this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_REJECTED, ViewFinder$BurstRejectedReason.CANNOT_BURST_USING_FRONT_CAMERA);
            }
        }
    }

    private boolean canObjectTracking() {
        if (isObjectTrackingEnabled()) {
            return ((PlatformCapability.isPowerSavingSupported(getCurrentCapturingMode().getCameraId()) && this.mActivity.isThermalWarningReceived()) || isManualFocus()) ? false : true;
        }
        return false;
    }

    private boolean isInternalStorageWritable() {
        return isStorageWritable(Storage$StorageType.INTERNAL);
    }

    private boolean isCurrentStorageWritable() {
        return isStorageWritable(((DestinationToSave) this.mUserSettings.get(UserSettingKey.DESTINATION_TO_SAVE)).getType());
    }

    private boolean isStorageWritable(Storage$StorageType storage$StorageType) {
        Storage$StorageState currentState = this.mStorage.getCurrentState(storage$StorageType);
        return currentState == Storage$StorageState.AVAILABLE || currentState == Storage$StorageState.AVAILABLE_NEAR_FULL;
    }

    private CapturingMode getCurrentCapturingMode() {
        return (CapturingMode) this.mUserSettings.get(UserSettingKey.CAPTURING_MODE);
    }

    private boolean isManualFocus() {
        return this.mUserSettings.get(UserSettingKey.FOCUS_RANGE) != FocusRange.AF;
    }

    private boolean isObjectTrackingEnabled() {
        return this.mUserSettings.get(UserSettingKey.OBJECT_TRACKING) == ObjectTracking.ON;
    }

    private boolean isTouchCaptureEnabled() {
        TouchCapture touchCapture = (TouchCapture) this.mUserSettings.get(UserSettingKey.TOUCH_CAPTURE);
        if (touchCapture == null) {
            return false;
        }
        switch (UserEventHandler$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture[touchCapture.ordinal()]) {
            case 2:
                if (getCurrentCapturingMode().isFront()) {
                }
                break;
        }
        return true;
    }

    private boolean isPhotoSelfTimerEnabled() {
        return ((SelfTimer) this.mUserSettings.get(UserSettingKey.SELF_TIMER)) != SelfTimer.OFF;
    }

    private boolean isBurstShotEnabled() {
        if (!this.mIsBurstShotEnabled) {
            return false;
        }
        CapturingMode currentCapturingMode = getCurrentCapturingMode();
        return (currentCapturingMode.isVideo() || !PlatformCapability.isManualBurstSupported(currentCapturingMode.getCameraId()) || this.mUserSettings.get(UserSettingKey.FUSION_MODE) == FusionMode.ON) ? false : true;
    }

    private boolean isCameraKeyAssignedToBurstShot() {
        return CameraKey.BURST_SHOT.equals((CameraKey) this.mUserSettings.get(UserSettingKey.CAMERA_KEY));
    }

    private boolean isSuperSlowMode() {
        return ((SlowMotion) this.mUserSettings.get(UserSettingKey.SLOW_MOTION)) == SlowMotion.SUPER_SLOW_MOTION;
    }

    private boolean canSelfTimerActivation() {
        return isPhotoSelfTimerEnabled() && isIdle();
    }

    private boolean isIdle() {
        return this.mViewFinder.isPreviewLayout();
    }

    private boolean notifyEventReady() {
        return notifyEventReady(false);
    }

    private boolean notifyEventReady(boolean z) {
        if (!this.mViewFinder.isUserOperable()) {
            return false;
        }
        LocalResearchUtil.getInstance().setPredictiveLaunchState(z);
        if (canSelfTimerActivation()) {
            return false;
        }
        this.mViewFinder.closeDialogs();
        this.mStateMachine.sendEvent(!getCurrentCapturingMode().isVideo() ? StateMachine$TransitterEvent.EVENT_CAPTURE_READY : StateMachine$TransitterEvent.EVENT_RECORD_READY, new Object[0]);
        return true;
    }

    private boolean notifyEventCaptureBurst() {
        if (isInternalStorageWritable()) {
            if (isBurstShotEnabled()) {
                if (canSelfTimerActivation()) {
                    this.mViewFinder.closeDialogs();
                    this.mStateMachine.sendEvent(!getCurrentCapturingMode().isVideo() ? StateMachine$TransitterEvent.EVENT_CAPTURE_READY : StateMachine$TransitterEvent.EVENT_RECORD_READY, new Object[0]);
                }
                this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_BURST, new Object[0]);
                return true;
            }
            notifyBurstShotRejectedReason(this.mHandlingEventSource);
        } else if (!isBurstShotEnabled()) {
            notifyBurstShotRejectedReason(this.mHandlingEventSource);
        }
        return false;
    }
}
