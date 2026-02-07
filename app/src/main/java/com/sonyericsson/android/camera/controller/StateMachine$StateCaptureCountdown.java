package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.controller.selftimerfeedback.LedLight;
import com.sonyericsson.android.camera.controller.selftimerfeedback.SelfTimerFeedback;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.sound.SoundPlayer$Type;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$SelfTimerTrigger;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateCaptureCountdown extends StateMachine$StatePhotoReady {
    private SelfTimerFeedback mFeedback;
    private final LedLight mLedLight;
    private final Event$SelfTimerTrigger mTrigger;
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureCancel(Object... objArr) {
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleClearFocus(Object... objArr) {
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleDeselectObjectPosition(Object... objArr) {
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartRecording(Object... objArr) {
    }

    /* synthetic */ StateMachine$StateCaptureCountdown(StateMachine stateMachine, Event$SelfTimerTrigger event$SelfTimerTrigger, StateMachine$1 stateMachine$1) {
        this(stateMachine, event$SelfTimerTrigger);
    }

    static /* synthetic */ void access$10000(StateMachine$StateCaptureCountdown stateMachine$StateCaptureCountdown) {
        stateMachine$StateCaptureCountdown.recoverFlash();
    }

    static /* synthetic */ Event$SelfTimerTrigger access$10100(StateMachine$StateCaptureCountdown stateMachine$StateCaptureCountdown) {
        return stateMachine$StateCaptureCountdown.mTrigger;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateCaptureCountdown(StateMachine stateMachine, Event$SelfTimerTrigger event$SelfTimerTrigger) {
        super(stateMachine, false);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_CAPTURE_COUNTDOWN;
        this.mLedLight = new StateMachine$StateCaptureCountdown$LedLightImpl(this, null);
        this.mTrigger = event$SelfTimerTrigger;
    }

    private void start(int i, SoundPlayer$Type soundPlayer$Type) {
        this.mFeedback = new SelfTimerFeedback(i, this.mLedLight, (this.this$0.getCurrentCapturingMode().isFront() || StateMachine.access$1800(this.this$0).get(UserSettingKey.FLASH) == Flash.OFF) ? false : true, new StateMachine$StateCaptureCountdown$1(this));
        this.mFeedback.start(0);
        if (soundPlayer$Type == null || !StateMachine.access$9600(this.this$0)) {
            return;
        }
        StateMachine.access$500(this.this$0).playSound(soundPlayer$Type);
    }

    private void recoverFlash() {
        if (((CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE)).isVideo()) {
            StateMachine.access$2600(this.this$0).setTorchAndCommit(((PhotoLight) StateMachine.access$1800(this.this$0).get(UserSettingKey.PHOTO_LIGHT)).getBooleanValue());
        } else {
            if (((CapturingMode) StateMachine.access$1800(this.this$0).get(UserSettingKey.CAPTURING_MODE)).isFront()) {
                return;
            }
            StateMachine.access$2600(this.this$0).setFlashModeAndCommit((Flash) StateMachine.access$1800(this.this$0).get(UserSettingKey.FLASH));
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StateCaptureCountdown");
        }
        SelfTimer photoSelfTimerSetting = StateMachine.access$1200(this.this$0).getPhotoSelfTimerSetting();
        if (this.mTrigger == Event$SelfTimerTrigger.SIDE_SENSE && photoSelfTimerSetting == SelfTimer.OFF) {
            photoSelfTimerSetting = SelfTimer.SIDE_COUNT_DOWN;
        }
        start(photoSelfTimerSetting.getDurationInMillisecond(), photoSelfTimerSetting.getSoundType());
        StateMachine.access$300(this.this$0).handleSelftimerStarted();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        StateMachine.access$10200(this.this$0);
        this.mFeedback.stop();
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_SELFTIMER_FINISHED, new Object[0]);
        StateMachine.access$300(this.this$0).handleSelftimerStopped(true);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureReady(Object... objArr) {
        recoverFlash();
        if (StateMachine.access$7000(this.this$0)) {
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoAfSearch(this.this$0, null), objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCapture(Object... objArr) {
        recoverFlash();
        if (StateMachine.access$7000(this.this$0)) {
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCaptureWaitForAfDone(this.this$0, false, null), new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureBurst(Object... objArr) {
        if (StateMachine.access$7500(this.this$0, true)) {
            recoverFlash();
            if (StateMachine.access$7000(this.this$0)) {
                StateMachine.access$3400(this.this$0, new StateMachine$StateBurstCaptureWaitForAfDone(this.this$0, null), new Object[0]);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        recoverFlash();
        super.handlePause(objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageError(Object... objArr) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke checkSaveDestinationCanBeChange:" + StateMachine.access$700(this.this$0, StateMachine.access$400(this.this$0)));
        }
        Storage$StorageType storage$StorageType = (Storage$StorageType) objArr[0];
        if (((Storage$StorageState) objArr[1]) == Storage$StorageState.CORRUPT) {
            CamLog.w("Storage corruption : type = " + storage$StorageType + ", state = " + StateMachine.access$1100(this.this$0));
            if (CamLog.DEBUG) {
                throw new IllegalStateException();
            }
        }
        recoverFlash();
        if (!StateMachine.access$700(this.this$0, StateMachine.access$400(this.this$0))) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateWarning(this.this$0, null), objArr);
        } else {
            StateMachine.access$4700(this.this$0);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleSetTouchedPosition(Object... objArr) {
        if (((SmileCapture) StateMachine.access$1800(this.this$0).get(UserSettingKey.SMILE_CAPTURE)).isSmileCaptureOn() || ((ShutterTrigger) StateMachine.access$1800(this.this$0).get(UserSettingKey.SHUTTER_TRIGGER)).isGestureShutterOn() || TouchCapture.ON != StateMachine.access$1800(this.this$0).get(UserSettingKey.TOUCH_CAPTURE)) {
            return;
        }
        super.handleSetTouchedPosition(objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleSetSelectedObjectPosition(Object... objArr) {
        if (TouchCapture.ON == StateMachine.access$1800(this.this$0).get(UserSettingKey.TOUCH_CAPTURE)) {
            super.handleSetSelectedObjectPosition(objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartAfAfterObjectTracked(Object... objArr) {
        if (StateMachine.access$2600(this.this$0).isCameraDeviceStatusReady() && TouchCapture.ON == StateMachine.access$1800(this.this$0).get(UserSettingKey.TOUCH_CAPTURE)) {
            recoverFlash();
            super.handleStartAfAfterObjectTracked(objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleSelfTimerCancel(Object... objArr) {
        recoverFlash();
        ResearchUtil.getInstance().sendSelfTimerCancelledEvent(this.mTrigger);
        StateMachine.access$4700(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoReady, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnHeatedOverCoolingUltraLow(Object... objArr) {
        StateMachine.access$8600(this.this$0, false);
    }
}
