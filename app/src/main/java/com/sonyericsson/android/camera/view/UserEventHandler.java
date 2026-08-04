package com.sonyericsson.android.camera.view;

import android.content.res.Resources;
import android.graphics.Point;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.SideTouchEventDetector;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CameraKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FocusRange;
import com.sonyericsson.android.camera.configuration.parameters.FrontAngle;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.ObjectTracking;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveLaunch;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.controller.StateMachine;
import com.sonyericsson.android.camera.device.CameraInfo;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinder;
import com.sonyericsson.android.camera.view.ViewFinderImpl;
import com.sonyericsson.android.camera.view.angle.FrontAngleChangeCalculator;
import com.sonyericsson.android.camera.view.angle.KeyZoomStepCalculator;
import com.sonyericsson.android.camera.view.angle.PinchZoomStepCalculator;
import com.sonyericsson.android.camera.view.angle.SideTouchZoomStepCalculator;
import com.sonyericsson.android.camera.view.angle.VariableIndex;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.cameracommon.focusview.FocusRectangles;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.storage.Storage;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event;
import java.util.HashMap;
import java.util.Map;

public class UserEventHandler {
    private static final String TAG = "UserEventHandler";
    private final CameraActivity mActivity;
    private final AngleActionHandler mAngleActionHandler;
    private boolean mIsBurstShotEnabled;
    private final KeyEventTranslator mKeyEventTranslator;
    private final MessageSettings mMessageSettings;
    private final SideTouchEventDetector mSideTouchCameraGestureDetector;
    private final StateMachine mStateMachine;
    private final Storage mStorage;
    private final UserSettings mUserSettings;
    private final ViewFinderImpl mViewFinder;
    private ActionByKey mActionByKey = ActionByKey.NONE;
    private final TouchEventProcedureManager mTouchEventProcedures;
    private EventSource mHandlingEventSource;

    public UserEventHandler(CameraActivity cameraActivity, ViewFinderImpl viewFinderImpl, StateMachine stateMachine, Storage storage, UserSettings userSettings, MessageSettings messageSettings, boolean z) {
        this.mActivity = cameraActivity;
        this.mViewFinder = viewFinderImpl;
        this.mStateMachine = stateMachine;
        this.mStorage = storage;
        this.mUserSettings = userSettings;
        this.mMessageSettings = messageSettings;
        userSettings = null;
        this.mKeyEventTranslator = new KeyEventTranslator(this.mUserSettings);
        this.mTouchEventProcedures = new TouchEventProcedureManager();
        this.mHandlingEventSource = null;
        this.mIsBurstShotEnabled = z;
        this.mAngleActionHandler = new AngleActionHandler();
        this.mSideTouchCameraGestureDetector = new SideTouchEventDetector(cameraActivity, new OnSideTouchGestureListenerImpl());
    }

    public void release() {
        this.mSideTouchCameraGestureDetector.unregister();
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean startEventHandling(EventSource eventSource) {
        if (this.mHandlingEventSource != null) {
            if (!KeyEventSource.FOCUS.equals(this.mHandlingEventSource) || !KeyEventSource.CAMERA.equals(eventSource)) {
                return false;
            }
            this.mHandlingEventSource = eventSource;
            return true;
        }
        this.mHandlingEventSource = eventSource;
        return true;
    }

    private void stopEventHandling(EventSource eventSource) {
        if (this.mHandlingEventSource != null && this.mHandlingEventSource.equals(eventSource)) {
            this.mHandlingEventSource = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void resetKeyEventHandling() {
        this.mKeyEventTranslator.reset();
        if (this.mHandlingEventSource instanceof KeyEventSource) {
            this.mHandlingEventSource = null;
            this.mActionByKey = ActionByKey.NONE;
        }
        this.mAngleActionHandler.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void resetTouchEventHandling() {
        if (this.mHandlingEventSource instanceof TouchEventSource) {
            this.mHandlingEventSource = null;
        }
        this.mAngleActionHandler.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void resetSideTouchEventHandling() {
        if (this.mHandlingEventSource instanceof SideTouchEventSource) {
            this.mHandlingEventSource = null;
        }
        this.mAngleActionHandler.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean isEventAccepted(EventSource eventSource) {
        return this.mHandlingEventSource == null || this.mHandlingEventSource.equals(eventSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void dispatchTouchDown(TouchEventSource touchEventSource) {
        if (!startEventHandling(touchEventSource)) {
            CamLog.i("dispatchTouchDown() startEventHandling() not accepted. requested:" + touchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        TouchEventProcedure touchEventProcedureFind = this.mTouchEventProcedures.find(touchEventSource);
        if (touchEventProcedureFind != null) {
            touchEventProcedureFind.doTouchDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void dispatchTouchUp(TouchEventSource touchEventSource, Point point) {
        this.mActivity.restartAutoPowerOffTimer();
        if (!isEventAccepted(touchEventSource)) {
            CamLog.i("dispatchTouchUp() not accepted. requested:" + touchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        TouchEventProcedure touchEventProcedureFind = this.mTouchEventProcedures.find(touchEventSource);
        if (touchEventProcedureFind != null) {
            touchEventProcedureFind.doTouchUp(point);
        }
        stopEventHandling(touchEventSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void dispatchClick(TouchEventSource touchEventSource, Point point) {
        if (!isEventAccepted(touchEventSource)) {
            CamLog.i("dispatchClick() not accepted. requested:" + touchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        TouchEventProcedure touchEventProcedureFind = this.mTouchEventProcedures.find(touchEventSource);
        if (touchEventProcedureFind != null) {
            touchEventProcedureFind.doClick(point);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void dispatchLongClick(TouchEventSource touchEventSource, Point point) {
        if (!isEventAccepted(touchEventSource)) {
            CamLog.i("dispatchLongClick() not accepted. requested:" + touchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        TouchEventProcedure touchEventProcedureFind = this.mTouchEventProcedures.find(touchEventSource);
        if (touchEventProcedureFind != null) {
            touchEventProcedureFind.doLongClick(point);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void dispatchTouchCancel(TouchEventSource touchEventSource) {
        this.mActivity.restartAutoPowerOffTimer();
        if (!isEventAccepted(touchEventSource)) {
            CamLog.i("dispatchTouchCancel() not accepted. requested:" + touchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        TouchEventProcedure touchEventProcedureFind = this.mTouchEventProcedures.find(touchEventSource);
        if (touchEventProcedureFind != null) {
            touchEventProcedureFind.doCancel();
        }
        stopEventHandling(touchEventSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void dispatchCaptureAreaScaleReady(TouchEventSource touchEventSource) {
        if (!isEventAccepted(touchEventSource)) {
            CamLog.i("dispatchCaptureAreaScaleReady() not accepted. requested:" + touchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        TouchEventProcedure touchEventProcedureFind = this.mTouchEventProcedures.find(touchEventSource);
        if (touchEventProcedureFind != null) {
            touchEventProcedureFind.doTouchAreaScaleReady();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void dispatchCaptureAreaScaling(TouchEventSource touchEventSource, float f) {
        if (!isEventAccepted(touchEventSource)) {
            CamLog.i("dispatchCaptureAreaScaling() not accepted. requested:" + touchEventSource.toString() + " current:" + this.mHandlingEventSource);
            return;
        }
        TouchEventProcedure touchEventProcedureFind = this.mTouchEventProcedures.find(touchEventSource);
        if (touchEventProcedureFind != null) {
            touchEventProcedureFind.doTouchAreaScaling(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean dispatchSideTouchEvent(MotionEvent motionEvent) {
        if (this.mViewFinder == null || this.mViewFinder.isAutoPowerOffWarningDisplayed()) {
            return true;
        }
        return this.mSideTouchCameraGestureDetector.onSideTouchEvent(motionEvent, this.mViewFinder.getOrientation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean dispatchVirtualKeyEvent(VirtualKeyEvent virtualKeyEvent) {
        if (virtualKeyEvent != VirtualKeyEvent.SMILE_CAPTURE || this.mViewFinder.predictiveLaunchCoverExists() || this.mViewFinder.isMessageDialogOpened()) {
            return false;
        }
        LocalResearchUtil.getInstance().setPredictiveLaunchState(false);
        ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.SMILE_CAPTURE);
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_READY, new Object[0]);
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE, new Object[0]);
        this.mActivity.restartAutoPowerOffTimer();
        return true;
    }

    private boolean dispatchKeyDownAfterTheSecondTime(KeyEvent keyEvent) {
        if (isEventAccepted(KeyEventSource.from(keyEvent.getKeyCode()))) {
            return this.mKeyEventTranslator.translateKeyCodeOnDown(keyEvent.getKeyCode()) != KeyEventTranslator.TranslatedKeyCode.VOLUME;
        }
        CamLog.i("dispatchKeyDownAfterTheSecondTime() not accepted. requested:" + keyEvent.getKeyCode() + " current:" + this.mHandlingEventSource);
        return true;
    }

    private boolean dispatchKeyDownInTheFirstTime(KeyEvent keyEvent) throws Resources.NotFoundException {
        if (!startEventHandling(KeyEventSource.from(keyEvent.getKeyCode()))) {
            CamLog.i("dispatchKeyDownInTheFirstTime() startEventHandling() not accepted. requested:" + keyEvent.getKeyCode() + " current:" + this.mHandlingEventSource);
            return true;
        }
        switch (this.mKeyEventTranslator.translateKeyCodeOnDown(keyEvent.getKeyCode())) {
            case VOLUME:
                return this.mStateMachine.isVideoRecording();
            case ZOOM:
                if (!this.mViewFinder.isUserOperable()) {
                    return true;
                }
                this.mActionByKey = ActionByKey.NONE;
                this.mViewFinder.hidePredictiveLaunchCover(ViewFinderImpl.PredictiveLaunchHideTrigger.VOLUME_KEY_ZOOM);
                this.mAngleActionHandler.prepareKeyZooming(keyEvent.getKeyCode() == 24);
                return true;
            case FOCUS:
                if (this.mViewFinder.isFlashAndSettingMenuOpened()) {
                    this.mActionByKey = ActionByKey.REJECT;
                    this.mViewFinder.closeDialogs();
                    return true;
                }
                boolean zPredictiveLaunchCoverExists = this.mViewFinder.predictiveLaunchCoverExists();
                this.mViewFinder.hidePredictiveLaunchCover(ViewFinderImpl.PredictiveLaunchHideTrigger.HW_CAMERA_KEY);
                if (notifyEventReady(zPredictiveLaunchCoverExists)) {
                    this.mActionByKey = ActionByKey.READY;
                }
                this.mViewFinder.clearCanceledSideTouchEventIcons();
                return true;
            case SHUTTER:
                if (!this.mViewFinder.isUserOperable()) {
                    return true;
                }
                if (this.mActionByKey == ActionByKey.REJECT) {
                    if (this.mViewFinder.isFlashAndSettingMenuOpened()) {
                        this.mViewFinder.closeDialogs();
                    }
                    return true;
                }
                ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.CAMERA_KEY);
                notifyShutterKeyEvent(true);
                keyEvent.startTracking();
                return true;
            case FOCUS_AND_SHUTTER_UP_KEY:
            case FOCUS_AND_SHUTTER_DOWN_KEY:
                if (this.mViewFinder.isFlashAndSettingMenuOpened()) {
                    this.mActionByKey = ActionByKey.REJECT;
                    this.mViewFinder.closeDialogs();
                    return true;
                }
                boolean zPredictiveLaunchCoverExists2 = this.mViewFinder.predictiveLaunchCoverExists();
                this.mViewFinder.hidePredictiveLaunchCover(ViewFinderImpl.PredictiveLaunchHideTrigger.VOLUME_KEY_SHUTTER);
                if (notifyEventReady(zPredictiveLaunchCoverExists2)) {
                    this.mActionByKey = ActionByKey.READY;
                }
                keyEvent.startTracking();
                return true;
            case BACK:
                LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil.MeasurementKey.CLOSE_INITIAL_RESPONSE);
                if (CamLog.DEBUG) {
                    CamLog.d("CLOSE_INITIAL_RESPONSE : start");
                }
                return true;
            case MENU:
            case IGNORED:
            case ENTER:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean dispatchKeyDown(KeyEvent keyEvent) {
        if (this.mViewFinder == null || this.mViewFinder.isAutoPowerOffWarningDisplayed()) {
            return true;
        }
        if (keyEvent.getRepeatCount() > 0) {
            return dispatchKeyDownAfterTheSecondTime(keyEvent);
        }
        return dispatchKeyDownInTheFirstTime(keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean dispatchKeyUp(KeyEvent keyEvent) {
        if (!isEventAccepted(KeyEventSource.from(keyEvent.getKeyCode()))) {
            CamLog.i("dispatchKeyUp() not accepted. requested:" + keyEvent.getKeyCode() + " current:" + this.mHandlingEventSource);
            return true;
        }
        stopEventHandling(KeyEventSource.from(keyEvent.getKeyCode()));
        KeyEventTranslator.TranslatedKeyCode translatedKeyCodeTranslateKeyCodeOnUp = this.mKeyEventTranslator.translateKeyCodeOnUp(keyEvent.getKeyCode());
        ActionByKey actionByKey = this.mActionByKey;
        this.mActionByKey = ActionByKey.NONE;
        switch (translatedKeyCodeTranslateKeyCodeOnUp) {
            case VOLUME:
                return this.mStateMachine.isVideoRecording();
            case ZOOM:
                this.mAngleActionHandler.stopZooming();
                return true;
            case FOCUS:
                if (actionByKey == ActionByKey.READY) {
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
                }
                return true;
            case SHUTTER:
                if (actionByKey == ActionByKey.CAPTURE_BURST) {
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
                }
                return true;
            case FOCUS_AND_SHUTTER_UP_KEY:
            case FOCUS_AND_SHUTTER_DOWN_KEY:
                if (!this.mViewFinder.isUserOperable()) {
                    return true;
                }
                if (actionByKey == ActionByKey.CAPTURE_BURST) {
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
                    return true;
                }
                if (actionByKey == ActionByKey.REJECT) {
                    return true;
                }
                ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.VOLUME_KEY);
                notifyShutterKeyEvent(false);
                return true;
            case BACK:
                if (this.mViewFinder.isSelfTimerCountDownViewShown()) {
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SELFTIMER_CANCEL, new Object[0]);
                    return true;
                }
                if (this.mStateMachine.isVideoRecording()) {
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_STOP_RECORDING, new Object[0]);
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
            case MENU:
                if (!this.mViewFinder.isHeadUpDisplayReady() || !this.mViewFinder.isEvfPrepared()) {
                    return true;
                }
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_MENU, new Object[0]);
                return true;
            case IGNORED:
            case ENTER:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
public boolean dispatchKeyLongPress(KeyEvent keyEvent) throws Resources.NotFoundException {
        if (!isEventAccepted(KeyEventSource.from(keyEvent.getKeyCode()))) {
            CamLog.i("dispatchKeyLongPress() not accepted. requested:" + keyEvent.getKeyCode() + " current:" + this.mHandlingEventSource);
            return true;
        }
        switch (this.mKeyEventTranslator.translateKeyCodeOnLongPress(keyEvent.getKeyCode())) {
            case SHUTTER:
                if (this.mActionByKey == ActionByKey.CAPTURE) {
                    notifyBurstShotRejectedReason(this.mHandlingEventSource);
                    return true;
                }
                return false;
            case FOCUS_AND_SHUTTER_UP_KEY:
            case FOCUS_AND_SHUTTER_DOWN_KEY:
                if (!this.mViewFinder.isUserOperable() || this.mActionByKey == ActionByKey.REJECT) {
                    return true;
                }
                if (notifyEventCaptureBurst()) {
                    this.mActionByKey = ActionByKey.CAPTURE_BURST;
                }
                return false;
            default:
                return false;
        }
    }
































































































































































































































































































































































































































































































































































































































































































    private class TouchEventProcedure { void doCancel() { } void doClick(Point point) { } void doLongClick(Point point) { } void doTouchAreaScaleReady() { } void doTouchAreaScaling(float f) { } void doTouchDown() { } void doTouchUp(Point point) { } private TouchEventProcedure() { } }

    private class TouchEventProcedureManager {
        private final Map<TouchEventSource, TouchEventProcedure> mProcedures = new HashMap();

        public TouchEventProcedureManager() {
            register(new CaptureButtonProcedure(UserEventHandler.this), OnScreenButtonItemFactory.ButtonType.TOUCH_CAPTURE, OnScreenButtonItemFactory.ButtonType.CAPTURE_SMALL, OnScreenButtonItemFactory.ButtonType.CAPTURE_LARGE, OnScreenButtonItemFactory.ButtonType.TOUCH_CAPTURE_WITH_SELFTIMER, OnScreenButtonItemFactory.ButtonType.CAPTURE_WITH_SELFTIMER_SHORT, OnScreenButtonItemFactory.ButtonType.CAPTURE_WITH_SELFTIMER_LONG, OnScreenButtonItemFactory.ButtonType.CAPTURE_WITH_SELFTIMER_LARGE, OnScreenButtonItemFactory.ButtonType.TOUCH_CAPTURE_WITH_SELFTIMER_SHORT, OnScreenButtonItemFactory.ButtonType.TOUCH_CAPTURE_WITH_SELFTIMER_LONG, OnScreenButtonItemFactory.ButtonType.SIDE_TOUCH_SNAPSHOT_RECORDING);
            register(new StopSlowMotionRecordingButtonProcedure(UserEventHandler.this), OnScreenButtonItemFactory.ButtonType.STOP_RECORDING_SMALL);
            register(new SelfTimerCancelButtonProcedure(UserEventHandler.this), OnScreenButtonItemFactory.ButtonType.CANCEL_SELFTIMER_LARGE, OnScreenButtonItemFactory.ButtonType.CANCEL_SELFTIMER_SIDE);
            register(new VideoRecordingButtonProcedure(UserEventHandler.this), OnScreenButtonItemFactory.ButtonType.TOUCH_RECORDING_START, OnScreenButtonItemFactory.ButtonType.START_RECORDING_LARGE, OnScreenButtonItemFactory.ButtonType.STOP_RECORDING_LARGE, OnScreenButtonItemFactory.ButtonType.STOP_RECORDING_IN_PAUSE_LARGE, OnScreenButtonItemFactory.ButtonType.SIDE_TOUCH_START_RECORDING, OnScreenButtonItemFactory.ButtonType.SIDE_TOUCH_STOP_RECORDING, OnScreenButtonItemFactory.ButtonType.SIDE_TOUCH_STOP_RECORDING_IN_PAUSE);
            register(new SuperSlowTriggerButtonProcedure(UserEventHandler.this), OnScreenButtonItemFactory.ButtonType.TRIGGER_SUPER_SLOW_MOTION);
            register(UserEventHandler.this.new VideoRecordingCamcordButtonProcedure(false), OnScreenButtonItemFactory.ButtonType.RESUME_RECORDING_SMALL, OnScreenButtonItemFactory.ButtonType.SIDE_TOUCH_RESUME_RECORDING);
            register(UserEventHandler.this.new VideoRecordingCamcordButtonProcedure(true), OnScreenButtonItemFactory.ButtonType.PAUSE_RECORDING_SMALL, OnScreenButtonItemFactory.ButtonType.SIDE_TOUCH_PAUSE_RECORDING);
            register(new CaptureAreaTouchEventProcedureSelector(UserEventHandler.this), UiComponent.CAPTURE_AREA);
            register(new AngleChangeButtonProcedure(UserEventHandler.this), UiComponent.ANGLE_CHANGE_BUTTON);
            register(new PredictiveLaunchCoverProcedure(UserEventHandler.this), UiComponent.PREDICTIVE_LAUNCH_COVER);
        }

        public TouchEventProcedure find(TouchEventSource touchEventSource) {
            TouchEventProcedure touchEventProcedure = this.mProcedures.get(touchEventSource);
            if (CamLog.DEBUG) {
                if (touchEventProcedure != null) {
                    CamLog.d("find(" + touchEventSource.toString() + ") TouchEventProcedure:" + touchEventProcedure.getClass().getSimpleName());
                } else {
                    CamLog.d("find(" + touchEventSource.toString() + ") TouchEventProcedure:not found");
                }
            }
            return touchEventProcedure;
        }

        private void register(TouchEventProcedure touchEventProcedure, TouchEventSource... touchEventSourceArr) {
            for (TouchEventSource touchEventSource : touchEventSourceArr) {
                this.mProcedures.put(touchEventSource, touchEventProcedure);
            }
        }
    }

    private static enum ActionByKey {
        READY,
        REJECT,
        CAPTURE,
        CAPTURE_BURST,
        NONE
    }

    public static class VirtualKeyEventDispatcher extends EventDispatcher {
        public VirtualKeyEventDispatcher() {
            super();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void attach(UserEventHandler userEventHandler) {
            super.attach(userEventHandler);
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void start() {
            super.start();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void stop() {
            super.stop();
        }

        public boolean sendVirtualKeyEvent(VirtualKeyEvent virtualKeyEvent) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("VirtualKeyEventDispatcher#sendVirtualKeyEvent()");
                }
                return getHandler().dispatchVirtualKeyEvent(virtualKeyEvent);
            }
            CamLog.i("VirtualKeyEventDispatcher#sendVirtualKeyEvent() event is rejected.");
            return false;
        }
    }

    public static enum VirtualKeyEvent {
        SMILE_CAPTURE
    }

    public static class SideTouchEventDispatcher extends EventDispatcher {
        public SideTouchEventDispatcher() {
            super();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void attach(UserEventHandler userEventHandler) {
            super.attach(userEventHandler);
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void start() {
            super.start();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void stop() {
            super.stop();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        protected void reset() {
            getHandler().resetSideTouchEventHandling();
        }

        public boolean send(MotionEvent motionEvent) {
            if (getHandler() != null && (isRunning() || motionEvent.getAction() == 3)) {
                if (CamLog.DEBUG) {
                    CamLog.d("SideTouchEventDispatcher#send()");
                }
                return getHandler().dispatchSideTouchEvent(motionEvent);
            }
            CamLog.i("SideTouchEventDispatcher#send() event is rejected.");
            return false;
        }
    }

    public static class TouchEventDispatcher extends EventDispatcher {
        public TouchEventDispatcher() {
            super();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void attach(UserEventHandler userEventHandler) {
            super.attach(userEventHandler);
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void start() {
            super.start();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void stop() {
            super.stop();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        protected void reset() {
            getHandler().resetTouchEventHandling();
        }

        public void sendTouchDown(TouchEventSource touchEventSource) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("TouchEventDispatcher#sendTouchDown() source:" + touchEventSource.toString());
                }
                getHandler().dispatchTouchDown(touchEventSource);
                return;
            }
            CamLog.i("TouchEventDispatcher#sendTouchDown() event is rejected. source:" + touchEventSource.toString());
        }

        public void sendTouchUp(TouchEventSource touchEventSource, Point point) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("TouchEventDispatcher#sendTouchUp() source:" + touchEventSource.toString());
                }
                getHandler().dispatchTouchUp(touchEventSource, point);
                return;
            }
            CamLog.i("TouchEventDispatcher#sendTouchUp() event is rejected. source:" + touchEventSource.toString());
        }

        public void sendClick(TouchEventSource touchEventSource, Point point) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("TouchEventDispatcher#sendClick() source:" + touchEventSource.toString());
                }
                getHandler().dispatchClick(touchEventSource, point);
                return;
            }
            CamLog.i("TouchEventDispatcher#sendClick() event is rejected. source:" + touchEventSource.toString());
        }

        public void sendLongClick(TouchEventSource touchEventSource, Point point) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("TouchEventDispatcher#sendLongClick() source:" + touchEventSource.toString());
                }
                getHandler().dispatchLongClick(touchEventSource, point);
                return;
            }
            CamLog.i("TouchEventDispatcher#sendLongClick() event is rejected. source:" + touchEventSource.toString());
        }

        public void sendCancel(TouchEventSource touchEventSource) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("TouchEventDispatcher#sendCancel() source:" + touchEventSource.toString());
                }
                getHandler().dispatchTouchCancel(touchEventSource);
                return;
            }
            CamLog.i("TouchEventDispatcher#sendCancel() event is rejected. source:" + touchEventSource.toString());
        }

        public void sendCaptureAreaScaleReady(TouchEventSource touchEventSource) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("TouchEventDispatcher#sendCaptureAreaScaleReady() source:" + touchEventSource.toString());
                }
                getHandler().dispatchCaptureAreaScaleReady(touchEventSource);
                return;
            }
            CamLog.i("TouchEventDispatcher#sendCaptureAreaScaleReady() event is rejected.source:" + touchEventSource.toString());
        }

        public void sendCaptureAreaScaling(TouchEventSource touchEventSource, float f) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("TouchEventDispatcher#sendCaptureAreaScaling() source:" + touchEventSource.toString());
                }
                getHandler().dispatchCaptureAreaScaling(touchEventSource, f);
                return;
            }
            CamLog.i("TouchEventDispatcher#sendCaptureAreaScaling() event is rejected. source:" + touchEventSource.toString());
        }
    }

    public static class KeyEventDispatcher extends EventDispatcher {
        public KeyEventDispatcher() {
            super();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void attach(UserEventHandler userEventHandler) {
            super.attach(userEventHandler);
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void start() {
            super.start();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        public /* bridge */ /* synthetic */ void stop() {
            super.stop();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.EventDispatcher
        protected void reset() {
            if (getHandler() != null) {
                getHandler().resetKeyEventHandling();
            }
        }

        public boolean sendKeyDown(KeyEvent keyEvent) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("KeyEventDispatcher#sendKeyDown() event:" + keyEvent.toString());
                }
                return getHandler().dispatchKeyDown(keyEvent);
            }
            CamLog.i("KeyEventDispatcher#sendKeyDown() event is rejected. event:" + keyEvent.toString());
            return false;
        }

        public boolean sendKeyUp(KeyEvent keyEvent) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("KeyEventDispatcher#sendKeyUp() event:" + keyEvent.toString());
                }
                return getHandler().dispatchKeyUp(keyEvent);
            }
            CamLog.i("KeyEventDispatcher#sendKeyUp() event is rejected. event:" + keyEvent.toString());
            return false;
        }

        public boolean sendKeyLongPress(KeyEvent keyEvent) {
            if (getHandler() != null && isRunning()) {
                if (CamLog.DEBUG) {
                    CamLog.d("KeyEventDispatcher#sendKeyLongPress() event:" + keyEvent.toString());
                }
                return getHandler().dispatchKeyLongPress(keyEvent);
            }
            CamLog.i("KeyEventDispatcher#sendKeyLongPress() event is rejected. event:" + keyEvent.toString());
            return false;
        }
    }

    private static abstract class EventDispatcher {
        private UserEventHandler mHandler;
        private boolean mIsRunning;

        protected void reset() {
        }

        private EventDispatcher() {
            this.mIsRunning = false;
        }



        public void attach(UserEventHandler userEventHandler) {
            this.mHandler = userEventHandler;
        }

        public void start() {
            this.mIsRunning = true;
            reset();
        }

        public void stop() {
            this.mIsRunning = false;
            reset();
        }

        protected UserEventHandler getHandler() {
            return this.mHandler;
        }

        protected boolean isRunning() {
            return this.mIsRunning;
        }
    }

    private static enum SideTouchEventSource implements EventSource {
        SIDE_SENSOR
    }

    public static enum UiComponent implements TouchEventSource {
        CAPTURE_AREA,
        ANGLE_CHANGE_BUTTON,
        PREDICTIVE_LAUNCH_COVER
    }

    public static interface TouchEventSource extends EventSource {
    }

    private static class KeyEventSource implements EventSource {
        private static KeyEventSource CAMERA = from(27);
        private static KeyEventSource FOCUS = from(80);
        private final int mKeyCode;

        private KeyEventSource(int i) {
            this.mKeyCode = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.mKeyCode == ((KeyEventSource) obj).mKeyCode;
        }

        public int hashCode() {
            return this.mKeyCode;
        }

        public static KeyEventSource from(int i) {
            return new KeyEventSource(i);
        }
    }

    private static interface EventSource {
    }

    private class CaptureButtonProcedure extends TouchEventProcedure {
        private boolean mIsBurst;
        private boolean mIsTouched;

        private CaptureButtonProcedure() {
            super();
            this.mIsTouched = false;
            this.mIsBurst = false;
        }

        /* synthetic */ CaptureButtonProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchDown() {
            this.mIsTouched = true;
            this.mIsBurst = false;
            UserEventHandler.this.mViewFinder.clearCanceledSideTouchEventIcons();
            UserEventHandler.this.notifyEventReady();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchUp(Point point) {
            PerfLog.CAPTURE_BUTTON_TAP.transit();
            this.mIsTouched = false;
            if (UserEventHandler.this.mViewFinder.isSwitchingAnimationProgress()) {
                return;
            }
            UserEventHandler.this.mViewFinder.closeDialogs();
            ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.CAPTURE_BUTTON);
            if (this.mIsBurst) {
                UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
            } else {
                UserEventHandler.this.mStateMachine.sendEvent(UserEventHandler.this.selectDefaultPhotoAction(false), new Object[0]);
            }
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doCancel() {
            if (this.mIsTouched) {
                this.mIsTouched = false;
                UserEventHandler.this.mViewFinder.clearBurstShootingRejectedReason();
                UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
            }
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doLongClick(Point point) {
            if (this.mIsTouched) {
                this.mIsBurst = UserEventHandler.this.notifyEventCaptureBurst();
            }
        }
    }

    private class StopSlowMotionRecordingButtonProcedure extends TouchEventProcedure {
        private StopSlowMotionRecordingButtonProcedure() {
            super();
        }

        /* synthetic */ StopSlowMotionRecordingButtonProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchUp(Point point) {
            UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_STOP_RECORDING_SLOW_MOTION_BUTTON_RELEASE, new Object[0]);
        }
    }

    private class VideoRecordingButtonProcedure extends TouchEventProcedure {
        private VideoRecordingButtonProcedure() {
            super();
        }

        /* synthetic */ VideoRecordingButtonProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchDown() {
            UserEventHandler.this.notifyEventReady();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchUp(Point point) {
            StateMachine.TransitterEvent transitterEvent;
            if (UserEventHandler.this.mStateMachine.isRecording()) {
                LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil.MeasurementKey.VIDEO_RECORDING_STOP_READY_FOR_USE);
                transitterEvent = StateMachine.TransitterEvent.EVENT_STOP_RECORDING;
            } else {
                transitterEvent = StateMachine.TransitterEvent.EVENT_START_RECORDING;
            }
            UserEventHandler.this.mStateMachine.sendEvent(transitterEvent, new Object[0]);
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doCancel() {
            UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
        }
    }

    private class VideoRecordingCamcordButtonProcedure extends VideoRecordingButtonProcedure {
        private final boolean mIsPauseButton;

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.VideoRecordingButtonProcedure, com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doCancel() {
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.VideoRecordingButtonProcedure, com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchDown() {
        }

        public VideoRecordingCamcordButtonProcedure(boolean z) {
            super();
            this.mIsPauseButton = z;
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.VideoRecordingButtonProcedure, com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchUp(Point point) {
            UserEventHandler.this.mStateMachine.sendEvent(this.mIsPauseButton ? StateMachine.TransitterEvent.EVENT_PAUSE_RECORDING : StateMachine.TransitterEvent.EVENT_RESUME_RECORDING, new Object[0]);
        }
    }

    private class SuperSlowTriggerButtonProcedure extends VideoRecordingButtonProcedure {
        private SuperSlowTriggerButtonProcedure() {
            super();
        }

        /* synthetic */ SuperSlowTriggerButtonProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.VideoRecordingButtonProcedure, com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchUp(Point point) {
            UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_TRIGGER_SLOW_MOTION, new Object[0]);
        }
    }

    private class SelfTimerCancelButtonProcedure extends TouchEventProcedure {
        private SelfTimerCancelButtonProcedure() {
            super();
        }

        /* synthetic */ SelfTimerCancelButtonProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchUp(Point point) {
            UserEventHandler.this.mViewFinder.clearTouchedScreenButtonGroup();
            UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SELFTIMER_CANCEL, new Object[0]);
        }
    }

    private class AngleChangeButtonProcedure extends TouchEventProcedure {
        private AngleChangeButtonProcedure() {
            super();
        }

        /* synthetic */ AngleChangeButtonProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doClick(Point point) throws Resources.NotFoundException {
            UserEventHandler.this.mAngleActionHandler.switchFrontAngle();
        }
    }

    private class PredictiveLaunchCoverProcedure extends TouchEventProcedure {
        private PredictiveLaunchCoverProcedure() {
            super();
        }

        /* synthetic */ PredictiveLaunchCoverProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        void doTouchUp(Point point) throws Resources.NotFoundException {
            if (((PredictiveLaunch) UserEventHandler.this.mStateMachine.getUserSetting().get(UserSettingKey.PREDICTIVE_LAUNCH)).doCapture()) {
                UserEventHandler.this.mViewFinder.hidePredictiveLaunchCover(ViewFinderImpl.PredictiveLaunchHideTrigger.TOUCH_UP_CAPTURE);
                if (UserEventHandler.this.mViewFinder.closeAutoReviewIfShowing() || UserEventHandler.this.mAngleActionHandler.stopZooming() || UserEventHandler.this.mViewFinder.closeSettingDialogIfOpened() || !UserEventHandler.this.mViewFinder.isUserOperable() || UserEventHandler.this.mViewFinder.isTutorialOpened() || !UserEventHandler.this.isCurrentStorageWritable()) {
                    return;
                }
                ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.TOUCH_CAPTURE_PREDICTIVE_LAUNCH);
                LocalResearchUtil.getInstance().setPredictiveLaunchState(true);
                UserEventHandler.this.notifyShutterKeyEvent(false);
                return;
            }
            UserEventHandler.this.mViewFinder.hidePredictiveLaunchCover(ViewFinderImpl.PredictiveLaunchHideTrigger.TOUCH_UP);
        }
    }

    private class CaptureAreaTouchEventProcedureSelector extends TouchEventProcedure {
        private final PhotoCaptureAreaEventProcedure mPhoto;
        private final FrontPhotoCaptureAreaEventProcedure mPhotoFront;
        private final SuperSlowVideoCaptureAreaEventProcedure mSuperSlow;
        private final VideoCaptureAreaEventProcedure mVideo;
        private final FrontVideoCaptureAreaEventProcedure mVideoFront;
private CaptureAreaTouchEventProcedureSelector() {
            super();
            this.mPhoto = new PhotoCaptureAreaEventProcedure(UserEventHandler.this);
            this.mPhotoFront = new FrontPhotoCaptureAreaEventProcedure(UserEventHandler.this);
            this.mVideo = new VideoCaptureAreaEventProcedure(UserEventHandler.this);
            this.mVideoFront = new FrontVideoCaptureAreaEventProcedure(UserEventHandler.this);
            this.mSuperSlow = new SuperSlowVideoCaptureAreaEventProcedure(UserEventHandler.this);
        }

        /* synthetic */ CaptureAreaTouchEventProcedureSelector(UserEventHandler userEventHandler) {
            this();
        }

        private TouchEventProcedure getCaptureAreaProcedure() {
            CapturingMode capturingMode = (CapturingMode) UserEventHandler.this.mUserSettings.get(UserSettingKey.CAPTURING_MODE);
            if (capturingMode.isVideo()) {
                if (!capturingMode.isFront()) {
                    if (UserEventHandler.this.isSuperSlowMode()) {
                        return this.mSuperSlow;
                    }
                    return this.mVideo;
                }
                return this.mVideoFront;
            }
            if (capturingMode.isFront()) {
                return this.mPhotoFront;
            }
            return this.mPhoto;
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        void doTouchDown() {
            getCaptureAreaProcedure().doTouchDown();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        void doTouchUp(Point point) {
            getCaptureAreaProcedure().doTouchUp(point);
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        void doClick(Point point) {
            getCaptureAreaProcedure().doClick(point);
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        void doLongClick(Point point) {
            getCaptureAreaProcedure().doLongClick(point);
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        void doCancel() {
            getCaptureAreaProcedure().doCancel();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        void doTouchAreaScaleReady() {
            getCaptureAreaProcedure().doTouchAreaScaleReady();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        void doTouchAreaScaling(float f) {
            getCaptureAreaProcedure().doTouchAreaScaling(f);
        }
    }

    private class CaptureAreaEventProcedure extends TouchEventProcedure {
        private CaptureAreaEventProcedure() {
            super();
        }

        /* synthetic */ CaptureAreaEventProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doCancel() {
            UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
        }

        void setSelectedObjectPositionToDeviceAndViewFinder(Point point) {
            UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SET_SELECTED_OBJECT_POSITION, point, UserEventHandler.this.mViewFinder.getPosition(point));
        }

        void setFocusPositionToDeviceAndViewFinder(Point point, FocusRectangles.FocusSetType focusSetType) {
            if (PlatformCapability.isTouchFocusSupported(UserEventHandler.this.mStateMachine.getCurrentCameraId())) {
                UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SET_TOUCHED_POSITION, point, UserEventHandler.this.mViewFinder.convertTouchPointToRectInDevicePreviewPositionRatio(point), focusSetType);
            }
        }
    }

    private class FrontVideoCaptureAreaEventProcedure extends CaptureAreaEventProcedure {
        private FrontVideoCaptureAreaEventProcedure() {
            super(UserEventHandler.this);
        }

        /* synthetic */ FrontVideoCaptureAreaEventProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchUp(Point point) {
            if (UserEventHandler.this.mViewFinder.isAutoReviewShowing()) {
                UserEventHandler.this.mViewFinder.hideAutoReview();
            } else if (UserEventHandler.this.isTouchCaptureEnabled()) {
                UserEventHandler.this.mStateMachine.sendEvent(UserEventHandler.this.selectDefaultVideoAction(), new Object[0]);
            }
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.CaptureAreaEventProcedure, com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doCancel() {
            if (!UserEventHandler.this.mAngleActionHandler.stopZooming() && UserEventHandler.this.isTouchCaptureEnabled()) {
                UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
            }
        }
    }

    private class VideoCaptureAreaEventProcedure extends FrontVideoCaptureAreaEventProcedure {
        private VideoCaptureAreaEventProcedure() {
            super(UserEventHandler.this);
        }

        /* synthetic */ VideoCaptureAreaEventProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.FrontVideoCaptureAreaEventProcedure, com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchUp(Point point) {
            if (UserEventHandler.this.mViewFinder.isAutoReviewShowing()) {
                UserEventHandler.this.mViewFinder.hideAutoReview();
                return;
            }
            if (UserEventHandler.this.mAngleActionHandler.stopZooming()) {
                return;
            }
            if (UserEventHandler.this.canObjectTracking()) {
                setSelectedObjectPositionToDeviceAndViewFinder(point);
            }
            if (UserEventHandler.this.isTouchCaptureEnabled()) {
                UserEventHandler.this.mStateMachine.sendEvent(UserEventHandler.this.selectDefaultVideoAction(), new Object[0]);
            }
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchAreaScaleReady() {
            UserEventHandler.this.mAngleActionHandler.preparePinchZooming();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchAreaScaling(float f) {
            UserEventHandler.this.mAngleActionHandler.performPinchZooming(f);
        }
    }

    private class SuperSlowVideoCaptureAreaEventProcedure extends VideoCaptureAreaEventProcedure {
        private SuperSlowVideoCaptureAreaEventProcedure() {
            super(UserEventHandler.this);
        }

        /* synthetic */ SuperSlowVideoCaptureAreaEventProcedure(UserEventHandler userEventHandler) {
            this();
        }

    @Override
        public void doTouchUp(Point point) {
            if (!UserEventHandler.this.mAngleActionHandler.isHandling() && UserEventHandler.this.isTouchCaptureEnabled()) {
                if (UserEventHandler.this.mStateMachine.isVideoRecording()) {
                    UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_TRIGGER_SLOW_MOTION, new Object[0]);
                    return;
                } else {
                    UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_RECORDING, new Object[0]);
                    return;
                }
            }
            super.doTouchUp(point);
        }
    }

    private class FrontPhotoCaptureAreaEventProcedure extends CaptureAreaEventProcedure {
        protected boolean mIsBurst;

        private FrontPhotoCaptureAreaEventProcedure() {
            super(UserEventHandler.this);
            this.mIsBurst = false;
        }

        /* synthetic */ FrontPhotoCaptureAreaEventProcedure(UserEventHandler userEventHandler) {
            this();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchDown() {
            this.mIsBurst = false;
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchUp(Point point) {
            if (UserEventHandler.this.mViewFinder.isFrontAngleChanging()) {
                return;
            }
            if (UserEventHandler.this.mViewFinder.isAutoReviewShowing()) {
                UserEventHandler.this.mViewFinder.hideAutoReview();
                return;
            }
            if (UserEventHandler.this.mViewFinder.canFocusRectanglesBeUpdated()) {
                if (UserEventHandler.this.isTouchCaptureEnabled()) {
                    if (UserEventHandler.this.mViewFinder.isSwitchingAnimationProgress()) {
                        return;
                    }
                    UserEventHandler.this.mStateMachine.sendEvent(UserEventHandler.this.selectDefaultPhotoAction(false), new Object[0]);
                    ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.TOUCH_CAPTURE);
                    return;
                }
                if (UserEventHandler.this.isCurrentStorageWritable()) {
                    setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.FIRST);
                    setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.RELEASE);
                }
            }
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.CaptureAreaEventProcedure, com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doCancel() {
            if (UserEventHandler.this.mAngleActionHandler.stopZooming()) {
                return;
            }
            UserEventHandler.this.mViewFinder.clearBurstShootingRejectedReason();
            UserEventHandler.this.mStateMachine.sendEvent((!UserEventHandler.this.mViewFinder.isTouchFocus() || this.mIsBurst) ? StateMachine.TransitterEvent.EVENT_CAPTURE_CANCEL : StateMachine.TransitterEvent.EVENT_CLEAR_FOCUS, new Object[0]);
            this.mIsBurst = false;
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doLongClick(Point point) throws Resources.NotFoundException {
            if (!UserEventHandler.this.mViewFinder.isSwitchingAnimationProgress() && UserEventHandler.this.isTouchCaptureEnabled()) {
                if (UserEventHandler.this.isInternalStorageWritable()) {
                    if (UserEventHandler.this.isBurstShotEnabled()) {
                        UserEventHandler.this.mViewFinder.hideAutoReview();
                        if (UserEventHandler.this.canObjectTracking()) {
                            UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_AF_AFTER_OBJECT_TRACKED, point, UserEventHandler.this.mViewFinder.getPosition(point));
                        } else {
                            setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.FIRST);
                            setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.RELEASE);
                        }
                        this.mIsBurst = true;
                        UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BURST, new Object[0]);
                        return;
                    }
                    UserEventHandler.this.notifyBurstShotRejectedReason(UserEventHandler.this.mHandlingEventSource);
                    return;
                }
                if (UserEventHandler.this.isBurstShotEnabled()) {
                    return;
                }
                UserEventHandler.this.notifyBurstShotRejectedReason(UserEventHandler.this.mHandlingEventSource);
            }
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doClick(Point point) {
            UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_AF_AFTER_OBJECT_TRACKED, point, UserEventHandler.this.mViewFinder.getPosition(point));
            if (!UserEventHandler.this.isTouchCaptureEnabled() || UserEventHandler.this.mViewFinder.isSwitchingAnimationProgress()) {
                return;
            }
            UserEventHandler.this.mStateMachine.sendEvent(UserEventHandler.this.selectDefaultPhotoAction(false), new Object[0]);
            ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.TOUCH_CAPTURE);
        }
    }

    private class PhotoCaptureAreaEventProcedure extends FrontPhotoCaptureAreaEventProcedure {
        private PhotoCaptureAreaEventProcedure() {
            super(UserEventHandler.this);
        }

        /* synthetic */ PhotoCaptureAreaEventProcedure(UserEventHandler userEventHandler) {
            this();
        }

        private void startAutoFocusAfterObjectTrackedIfPossible(Point point) {
            if (UserEventHandler.this.canSelfTimerActivation()) {
                return;
            }
            UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_AF_AFTER_OBJECT_TRACKED, point, UserEventHandler.this.mViewFinder.getPosition(point));
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.FrontPhotoCaptureAreaEventProcedure, com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchUp(Point point) throws Resources.NotFoundException {
            boolean z;
            if (UserEventHandler.this.mViewFinder.isAutoReviewShowing()) {
                UserEventHandler.this.mViewFinder.hideAutoReview();
                z = true;
            } else {
                z = false;
            }
            if (UserEventHandler.this.mAngleActionHandler.stopZooming()) {
                z = true;
            }
            if (!z && UserEventHandler.this.mViewFinder.canFocusRectanglesBeUpdated()) {
                if (!UserEventHandler.this.canObjectTracking()) {
                    if (!UserEventHandler.this.isCurrentStorageWritable()) {
                        UserEventHandler.this.mViewFinder.switchSemiAutoStateByTouch(true);
                    } else {
                        setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.FIRST);
                        setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.RELEASE);
                        UserEventHandler.this.mViewFinder.switchSemiAutoStateByTouch(true);
                    }
                } else {
                    setSelectedObjectPositionToDeviceAndViewFinder(point);
                }
                if (UserEventHandler.this.isTouchCaptureEnabled()) {
                    if (UserEventHandler.this.canObjectTracking()) {
                        startAutoFocusAfterObjectTrackedIfPossible(point);
                    }
                    if (UserEventHandler.this.mViewFinder.isSwitchingAnimationProgress()) {
                        return;
                    }
                    if (this.mIsBurst) {
                        UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
                    } else {
                        UserEventHandler.this.mStateMachine.sendEvent(UserEventHandler.this.selectDefaultPhotoAction(false), new Object[0]);
                    }
                    ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.TOUCH_CAPTURE);
                    LocalResearchUtil.getInstance().setPredictiveLaunchState(false);
                }
            }
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchAreaScaleReady() {
            UserEventHandler.this.mAngleActionHandler.preparePinchZooming();
        }

        @Override // com.sonyericsson.android.camera.view.UserEventHandler.TouchEventProcedure
        public void doTouchAreaScaling(float f) {
            UserEventHandler.this.mAngleActionHandler.performPinchZooming(f);
        }
    }

    private class OnSideTouchGestureListenerImpl implements SideTouchEventDetector.OnSideTouchGestureListener {
        private SideTouchEventDetector.SideTouchEvent mTriggerEvent;

        private OnSideTouchGestureListenerImpl() {
        }

        /* synthetic */ OnSideTouchGestureListenerImpl(UserEventHandler userEventHandler) {
            this();
        }

        private boolean isSideTouchAvailableMode() {
            switch (UserEventHandler.this.getCurrentCapturingMode()) {
                case SUPERIOR_FRONT:
                case SCENE_RECOGNITION:
                case VIDEO:
                case FRONT_VIDEO:
                    return true;
                default:
                    return false;
            }
        }

        @Override // com.sonyericsson.android.camera.SideTouchEventDetector.OnSideTouchGestureListener
        public void onGestureStart() {
            UserEventHandler.this.startEventHandling(SideTouchEventSource.SIDE_SENSOR);
        }

        @Override // com.sonyericsson.android.camera.SideTouchEventDetector.OnSideTouchGestureListener
        public void onDoubleTap(SideTouchEventDetector.SideTouchEvent sideTouchEvent, int i, int i2) throws Resources.NotFoundException {
            if (CamLog.DEBUG) {
                CamLog.d("OnSideTouchGestureListenerImpl#onDoubleTap() " + sideTouchEvent);
            }
            if (UserEventHandler.this.isEventAccepted(SideTouchEventSource.SIDE_SENSOR) && isSideTouchAvailableMode() && !UserEventHandler.this.mAngleActionHandler.stopZooming() && !UserEventHandler.this.mViewFinder.closeSettingDialogIfOpened() && UserEventHandler.this.mViewFinder.isUserOperable() && !UserEventHandler.this.mViewFinder.isTutorialOpened() && UserEventHandler.this.isCurrentStorageWritable() && UserEventHandler.this.mActionByKey != ActionByKey.CAPTURE_BURST) {
                if (UserEventHandler.this.mViewFinder.predictiveLaunchCoverExists()) {
                    UserEventHandler.this.mViewFinder.hidePredictiveLaunchCover(ViewFinderImpl.PredictiveLaunchHideTrigger.SIDE_SENSING);
                    LocalResearchUtil.getInstance().setPredictiveLaunchState(true);
                } else {
                    LocalResearchUtil.getInstance().setPredictiveLaunchState(false);
                }
                if (UserEventHandler.this.mViewFinder.isSelfTimerCountDownViewShown()) {
                    if (UserEventHandler.this.getCurrentCapturingMode().isVideo()) {
                        UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_RECORDING, new Object[0]);
                        return;
                    } else {
                        UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE, new Object[0]);
                        return;
                    }
                }
                if (UserEventHandler.this.mViewFinder.isPreviewLayout() && UserEventHandler.this.mViewFinder.onSideTapped(sideTouchEvent)) {
                    ResearchUtil.getInstance().setSideSensePosition(i, i2);
                    UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN, Event.SelfTimerTrigger.SIDE_SENSE);
                }
            }
        }

        @Override // com.sonyericsson.android.camera.SideTouchEventDetector.OnSideTouchGestureListener
        public void onScrollStart(SideTouchEventDetector.SideTouchEvent sideTouchEvent) throws Resources.NotFoundException {
            if (CamLog.DEBUG) {
                CamLog.d("OnSideTouchGestureListenerImpl#onScrollStart() " + sideTouchEvent);
            }
            if (UserEventHandler.this.isEventAccepted(SideTouchEventSource.SIDE_SENSOR) && isSideTouchAvailableMode() && UserEventHandler.this.mViewFinder.isUserOperable() && !UserEventHandler.this.mViewFinder.isTutorialOpened() && !UserEventHandler.this.mViewFinder.predictiveLaunchCoverExists()) {
                if (UserEventHandler.this.getCurrentCapturingMode().isFront()) {
                    UserEventHandler.this.mViewFinder.notifyZoomOperationRejected();
                    return;
                }
                this.mTriggerEvent = sideTouchEvent;
                if (UserEventHandler.this.mAngleActionHandler.prepareSideTouchZoom()) {
                    UserEventHandler.this.mViewFinder.onSideTouchZoom(sideTouchEvent, UserEventHandler.this.mAngleActionHandler.getCurrentAngle());
                }
            }
        }

        @Override // com.sonyericsson.android.camera.SideTouchEventDetector.OnSideTouchGestureListener
        public void onScrollEnd() {
            if (CamLog.DEBUG) {
                CamLog.d("OnSideTouchGestureListenerImpl#onScrollEnd()");
            }
            if (UserEventHandler.this.isEventAccepted(SideTouchEventSource.SIDE_SENSOR) && !UserEventHandler.this.getCurrentCapturingMode().isFront()) {
                UserEventHandler.this.mAngleActionHandler.stopZooming();
            }
        }

        @Override // com.sonyericsson.android.camera.SideTouchEventDetector.OnSideTouchGestureListener
        public void onScroll(SideTouchEventDetector.SideTouchEvent sideTouchEvent) {
            if (CamLog.DEBUG) {
                CamLog.d("OnSideTouchGestureListenerImpl#onScrollEnd() " + sideTouchEvent);
            }
            if (UserEventHandler.this.isEventAccepted(SideTouchEventSource.SIDE_SENSOR) && !UserEventHandler.this.getCurrentCapturingMode().isFront() && this.mTriggerEvent != null && this.mTriggerEvent.area == sideTouchEvent.area) {
                UserEventHandler.this.mAngleActionHandler.updateSideTouchZoomStrength(sideTouchEvent.position - this.mTriggerEvent.position);
            }
        }

        @Override // com.sonyericsson.android.camera.SideTouchEventDetector.OnSideTouchGestureListener
        public void onGestureFinished() {
            if (UserEventHandler.this.isEventAccepted(SideTouchEventSource.SIDE_SENSOR)) {
                UserEventHandler.this.resetSideTouchEventHandling();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void notifyShutterKeyEvent(boolean z) {
        if (this.mViewFinder.isDisplayFlashScreenDisplayed()) {
            return;
        }
        this.mViewFinder.closeDialogs();
        StateMachine.TransitterEvent transitterEventSelectShutterKeyAction = selectShutterKeyAction(z);
        switch (transitterEventSelectShutterKeyAction) {
            case EVENT_CAPTURE_BURST:
                this.mActionByKey = ActionByKey.CAPTURE_BURST;
                this.mStateMachine.sendEvent(transitterEventSelectShutterKeyAction, new Object[0]);
                break;
            case EVENT_CAPTURE:
                this.mActionByKey = ActionByKey.CAPTURE;
                this.mStateMachine.sendEvent(transitterEventSelectShutterKeyAction, new Object[0]);
                break;
            case EVENT_START_CAPTURE_COUNTDOWN:
                this.mActionByKey = ActionByKey.CAPTURE;
                this.mStateMachine.sendEvent(transitterEventSelectShutterKeyAction, Event.SelfTimerTrigger.NORMAL);
                break;
            default:
                this.mStateMachine.sendEvent(transitterEventSelectShutterKeyAction, new Object[0]);
                break;
        }
    }

    private StateMachine.TransitterEvent selectShutterKeyAction(boolean z) {
        if (getCurrentCapturingMode().isVideo()) {
            if (isSuperSlowMode() && this.mStateMachine.isVideoRecording()) {
                return StateMachine.TransitterEvent.EVENT_TRIGGER_SLOW_MOTION;
            }
            return selectDefaultVideoAction();
        }
        return selectDefaultPhotoAction(z && isCameraKeyAssignedToBurstShot());
    }

    /* JADX INFO: Access modifiers changed from: private */
    private StateMachine.TransitterEvent selectDefaultVideoAction() {
        if (this.mStateMachine.isVideoRecording()) {
            return StateMachine.TransitterEvent.EVENT_STOP_RECORDING;
        }
        return StateMachine.TransitterEvent.EVENT_START_RECORDING;
    }

    /* JADX INFO: Access modifiers changed from: private */
    private StateMachine.TransitterEvent selectDefaultPhotoAction(boolean z) {
        if (isBurstShotEnabled() && z && isInternalStorageWritable()) {
            return StateMachine.TransitterEvent.EVENT_CAPTURE_BURST;
        }
        if (canSelfTimerActivation()) {
            return StateMachine.TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN;
        }
        return StateMachine.TransitterEvent.EVENT_CAPTURE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void notifyBurstShotRejectedReason(EventSource eventSource) throws Resources.NotFoundException {
        if (this.mIsBurstShotEnabled) {
            CapturingMode currentCapturingMode = getCurrentCapturingMode();
            if (currentCapturingMode.isVideo()) {
                return;
            }
            if (PlatformCapability.isManualBurstSupported(currentCapturingMode.getCameraId())) {
                if (!isCameraKeyAssignedToBurstShot() && KeyEventSource.CAMERA.equals(eventSource)) {
                    this.mViewFinder.sendViewUpdateEvent(ViewFinder.ViewUpdateEvent.EVENT_ON_BURST_REJECTED, ViewFinder.BurstRejectedReason.BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING);
                    return;
                } else {
                    if (this.mUserSettings.get(UserSettingKey.FUSION_MODE) == FusionMode.ON) {
                        this.mViewFinder.sendViewUpdateEvent(ViewFinder.ViewUpdateEvent.EVENT_ON_BURST_REJECTED, ViewFinder.BurstRejectedReason.CANNOT_BURST_DUE_TO_FUSION_MODE);
                        return;
                    }
                    return;
                }
            }
            if ((isCameraKeyAssignedToBurstShot() || !KeyEventSource.CAMERA.equals(eventSource)) && PlatformCapability.isManualBurstSupported(CameraInfo.CameraId.BACK)) {
                this.mViewFinder.sendViewUpdateEvent(ViewFinder.ViewUpdateEvent.EVENT_ON_BURST_REJECTED, ViewFinder.BurstRejectedReason.CANNOT_BURST_USING_FRONT_CAMERA);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean canObjectTracking() {
        if (isObjectTrackingEnabled()) {
            return ((PlatformCapability.isPowerSavingSupported(getCurrentCapturingMode().getCameraId()) && this.mActivity.isThermalWarningReceived()) || isManualFocus()) ? false : true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean isInternalStorageWritable() {
        return isStorageWritable(Storage.StorageType.INTERNAL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean isCurrentStorageWritable() {
        return isStorageWritable(((DestinationToSave) this.mUserSettings.get(UserSettingKey.DESTINATION_TO_SAVE)).getType());
    }

    private boolean isStorageWritable(Storage.StorageType storageType) {
        Storage.StorageState currentState = this.mStorage.getCurrentState(storageType);
        return currentState == Storage.StorageState.AVAILABLE || currentState == Storage.StorageState.AVAILABLE_NEAR_FULL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    private CapturingMode getCurrentCapturingMode() {
        return (CapturingMode) this.mUserSettings.get(UserSettingKey.CAPTURING_MODE);
    }

    private boolean isManualFocus() {
        return this.mUserSettings.get(UserSettingKey.FOCUS_RANGE) != FocusRange.AF;
    }

    private boolean isObjectTrackingEnabled() {
        return this.mUserSettings.get(UserSettingKey.OBJECT_TRACKING) == ObjectTracking.ON;
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean isTouchCaptureEnabled() {
        TouchCapture touchCapture = (TouchCapture) this.mUserSettings.get(UserSettingKey.TOUCH_CAPTURE);
        if (touchCapture == null) {
            return false;
        }
        switch (touchCapture) {
            case ON:
                return true;
            case FRONT_ONLY:
                if (getCurrentCapturingMode().isFront()) {
                    return true;
                }
                break;
        }
        return false;
    }

    /* renamed from: com.sonyericsson.android.camera.view.UserEventHandler$1, reason: invalid class name */


    private boolean isPhotoSelfTimerEnabled() {
        return ((SelfTimer) this.mUserSettings.get(UserSettingKey.SELF_TIMER)) != SelfTimer.OFF;
    }

    /* JADX INFO: Access modifiers changed from: private */
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

    /* JADX INFO: Access modifiers changed from: private */
    private boolean isSuperSlowMode() {
        return ((SlowMotion) this.mUserSettings.get(UserSettingKey.SLOW_MOTION)) == SlowMotion.SUPER_SLOW_MOTION;
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean canSelfTimerActivation() {
        return isPhotoSelfTimerEnabled() && isIdle();
    }

    private boolean isIdle() {
        return this.mViewFinder.isPreviewLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
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
        this.mStateMachine.sendEvent(!getCurrentCapturingMode().isVideo() ? StateMachine.TransitterEvent.EVENT_CAPTURE_READY : StateMachine.TransitterEvent.EVENT_RECORD_READY, new Object[0]);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean notifyEventCaptureBurst() throws Resources.NotFoundException {
        if (isInternalStorageWritable()) {
            if (isBurstShotEnabled()) {
                if (canSelfTimerActivation()) {
                    this.mViewFinder.closeDialogs();
                    this.mStateMachine.sendEvent(!getCurrentCapturingMode().isVideo() ? StateMachine.TransitterEvent.EVENT_CAPTURE_READY : StateMachine.TransitterEvent.EVENT_RECORD_READY, new Object[0]);
                }
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BURST, new Object[0]);
                return true;
            }
            notifyBurstShotRejectedReason(this.mHandlingEventSource);
        } else if (!isBurstShotEnabled()) {
            notifyBurstShotRejectedReason(this.mHandlingEventSource);
        }
        return false;
    }

    private class AngleActionHandler {
        private VariableIndex.Calculator mCalculator;
        private VariableIndex mCurrentVariable;
        private VariableUserEventTicker mEventTicker;
        private int mSideTouchScrollDistance;

        private AngleActionHandler() {
        }

        /* synthetic */ AngleActionHandler(UserEventHandler userEventHandler) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        private boolean preparePinchZooming() {
            return prepareZoom(new PinchZoomStepCalculator());
        }

        /* JADX INFO: Access modifiers changed from: private */
        private boolean prepareSideTouchZoom() {
            if (!prepareZoom(new SideTouchZoomStepCalculator())) {
                return false;
            }
            this.mSideTouchScrollDistance = 0;
            this.mEventTicker = new VariableUserEventTicker();
            this.mEventTicker.start(33, new VariableUserEventTicker.OnEventTickedListener() { // from class: com.sonyericsson.android.camera.view.UserEventHandler.AngleActionHandler.1
                @Override // com.sonyericsson.android.camera.view.UserEventHandler.VariableUserEventTicker.OnEventTickedListener
                public void onTicked(VariableUserEventTicker variableUserEventTicker) {
                    AngleActionHandler.this.performZoom(Integer.valueOf(AngleActionHandler.this.mSideTouchScrollDistance));
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        private boolean prepareKeyZooming(boolean z) {
            if (!prepareZoom(new KeyZoomStepCalculator(z))) {
                return false;
            }
            this.mEventTicker = new VariableUserEventTicker();
            this.mEventTicker.start(33, new VariableUserEventTicker.OnEventTickedListener() { // from class: com.sonyericsson.android.camera.view.UserEventHandler.AngleActionHandler.2
                @Override // com.sonyericsson.android.camera.view.UserEventHandler.VariableUserEventTicker.OnEventTickedListener
                public void onTicked(VariableUserEventTicker variableUserEventTicker) {
                    AngleActionHandler.this.performKeyZooming();
                }
            });
            return true;
        }

        private boolean prepareZoom(VariableIndex.Calculator calculator) throws Resources.NotFoundException {
            if (isHandling()) {
                return false;
            }
            if (UserEventHandler.this.getCurrentCapturingMode().isFront() || !UserEventHandler.this.isCurrentStorageWritable()) {
                UserEventHandler.this.mViewFinder.notifyZoomOperationRejected();
                return false;
            }
            if (UserEventHandler.this.mStateMachine.isAngleEventReceivable()) {
                this.mCalculator = calculator;
                Float zoom = UserEventHandler.this.mStateMachine.getZoom();
                if (zoom != null) {
                    this.mCurrentVariable = new VariableIndex(120, 0, (int) (120.0f * zoom.floatValue()));
                    UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ZOOM_PREPARE, this.mCurrentVariable);
                    return true;
                }
            }
            return false;
        }

        private boolean prepareFrontAngleChange(FrontAngle frontAngle) {
            if (!UserEventHandler.this.getCurrentCapturingMode().isFront() || !UserEventHandler.this.mStateMachine.isAngleEventReceivable()) {
                return false;
            }
            this.mCalculator = new FrontAngleChangeCalculator();
            this.mCurrentVariable = new VariableIndex(120, 0, getFrontAngleStep(frontAngle));
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        private boolean performPinchZooming(float f) {
            return performZoom(Float.valueOf(f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        private boolean performKeyZooming() {
            return performZoom(Long.valueOf(System.currentTimeMillis()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        private void updateSideTouchZoomStrength(int i) {
            this.mSideTouchScrollDistance = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        private boolean performFrontAngleChange(FrontAngle frontAngle) {
            return performZoom(Integer.valueOf(getFrontAngleStep(frontAngle)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        private boolean performZoom(Object... objArr) {
            if (!isHandling()) {
                return false;
            }
            int index = this.mCurrentVariable.getIndex();
            this.mCurrentVariable = this.mCalculator.calculate(this.mCurrentVariable, objArr);
            boolean z = index != this.mCurrentVariable.getIndex();
            if (z) {
                UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ZOOM_PERFORM, this.mCurrentVariable);
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        private boolean stopZooming() {
            return finishZoom();
        }

        /* JADX INFO: Access modifiers changed from: private */
        private boolean finishZoom() {
            if (!isHandling()) {
                return false;
            }
            UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ZOOM_FINISH, new Object[0]);
            clear();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        private boolean isHandling() {
            return (this.mCurrentVariable == null || this.mCalculator == null) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        private void clear() {
            if (this.mEventTicker != null) {
                this.mEventTicker.stop();
                this.mEventTicker = null;
            }
            this.mCurrentVariable = null;
            this.mCalculator = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        private void switchFrontAngle() throws Resources.NotFoundException {
            FrontAngle frontAngle = (FrontAngle) UserEventHandler.this.mUserSettings.get(UserSettingKey.FRONT_ANGLE);
            if (prepareFrontAngleChange(frontAngle)) {
                UserEventHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ANGLE_CHANGE_START, new Object[0]);
                final FrontAngle frontAngle2 = frontAngle == FrontAngle.DEFAULT ? FrontAngle.CROPPED : FrontAngle.DEFAULT;
                UserEventHandler.this.mUserSettings.set(frontAngle2);
                UserEventHandler.this.mViewFinder.sendViewUpdateEvent(ViewFinder.ViewUpdateEvent.EVENT_ANGLE_CHANGE_START, new Object[0]);
                LocalResearchUtil.getInstance().setSettingsValue(frontAngle, frontAngle2, UserEventHandler.this.getCurrentCapturingMode());
                this.mEventTicker = new VariableUserEventTicker();
                this.mEventTicker.start(33, new VariableUserEventTicker.OnEventTickedListener() { // from class: com.sonyericsson.android.camera.view.UserEventHandler.AngleActionHandler.3
                    int mCount = 1;

                    @Override // com.sonyericsson.android.camera.view.UserEventHandler.VariableUserEventTicker.OnEventTickedListener
                    public void onTicked(VariableUserEventTicker variableUserEventTicker) {
                        AngleActionHandler.this.performFrontAngleChange(frontAngle2);
                        this.mCount--;
                        if (this.mCount <= 0) {
                            variableUserEventTicker.stop();
                            AngleActionHandler.this.finishZoom();
                        }
                    }
                });
            }
        }

        private int getFrontAngleStep(FrontAngle frontAngle) {
            if (frontAngle != FrontAngle.CROPPED) {
                return 0;
            }
            return (int) (((PlatformCapability.getWideZoomTargetRatio(CameraInfo.CameraId.FRONT) - 1.0d) / (PlatformCapability.getMaxZoomRatio(CameraInfo.CameraId.FRONT) - 1.0d)) * 120.0d);
        }

        protected int getCurrentAngle() {
            return this.mCurrentVariable.getIndex();
        }
    }

    private static class VariableUserEventTicker implements Runnable {
        private static final int INTERVAL_30_FPS = 33;
        private Handler mHandler;
        private int mInterval;
        private OnEventTickedListener mOnTickingListener;

        public interface OnEventTickedListener {
            void onTicked(VariableUserEventTicker variableUserEventTicker);
        }

        private VariableUserEventTicker() {
        }



        void start(int i, OnEventTickedListener onEventTickedListener) {
            this.mInterval = i;
            this.mOnTickingListener = onEventTickedListener;
            postSchedule(0L);
        }

        void stop() {
            this.mHandler.removeCallbacks(this);
            this.mOnTickingListener = null;
        }

        private void postSchedule(long j) {
            if (this.mOnTickingListener == null) {
                return;
            }
            if (this.mHandler == null) {
                this.mHandler = new Handler();
            }
            this.mHandler.removeCallbacks(this);
            this.mHandler.postDelayed(this, j);
        }

        @Override // java.lang.Runnable
        public void run() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.mOnTickingListener.onTicked(this);
            int iCurrentTimeMillis = this.mInterval - ((int) (System.currentTimeMillis() - jCurrentTimeMillis));
            postSchedule(iCurrentTimeMillis < 0 ? 0L : iCurrentTimeMillis);
        }
    }
}
