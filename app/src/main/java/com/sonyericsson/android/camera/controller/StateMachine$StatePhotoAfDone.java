package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;

class StateMachine$StatePhotoAfDone extends StateMachine$StatePhotoBase {
    private boolean mIsClearObjectTrackingFocusFrame;
    private final boolean mIsHighQualityBurstAvailable;
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleClearFocus(Object... objArr) {
    }

    /* synthetic */ StateMachine$StatePhotoAfDone(StateMachine stateMachine, boolean z, StateMachine$1 stateMachine$1) {
        this(stateMachine, z);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StatePhotoAfDone(StateMachine stateMachine, boolean z) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mIsClearObjectTrackingFocusFrame = false;
        this.mCaptureState = StateMachine$CaptureState.STATE_PHOTO_AF_DONE;
        this.mIsHighQualityBurstAvailable = z;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StatePhotoAfDone");
        }
        super.entry();
        this.mIsClearObjectTrackingFocusFrame = false;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureBurst(Object... objArr) {
        if (StateMachine.access$7500(this.this$0, this.mIsHighQualityBurstAvailable)) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateBurstCapture(this.this$0, false, null), objArr);
        } else {
            StateMachine.access$10900(this.this$0, this.this$0.createPhotoSavingRequest(SavingTaskManager$SavedFileType.PHOTO));
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCapture(this.this$0, null), objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCapture(Object... objArr) {
        StateMachine.access$10900(this.this$0, this.this$0.createPhotoSavingRequest(SavingTaskManager$SavedFileType.PHOTO));
        StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCapture(this.this$0, null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureCancel(Object... objArr) {
        StateMachine.access$3500(this.this$0, false);
        StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReady(this.this$0, true), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3500(this.this$0, true);
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnObjectTracked(Object... objArr) {
        this.mIsClearObjectTrackingFocusFrame = false;
        if (PlatformCapability.isTrackingFocusDuringLockSupported(this.this$0.getCurrentCameraId())) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, objArr[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnObjectLost(Object... objArr) {
        super.handleOnObjectLost(objArr);
        this.mIsClearObjectTrackingFocusFrame = true;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnFaceDetected(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        super.exit();
        if (this.mIsClearObjectTrackingFocusFrame) {
            this.mIsClearObjectTrackingFocusFrame = false;
            if (StateMachine.access$1200(this.this$0) != null && StateMachine.access$1200(this.this$0).isSetupHeadupDisplayInvoked()) {
                StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE, new Object[0]);
            }
            StateMachine.access$2800(this.this$0).stop();
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageMounted(Object... objArr) {
        StateMachine$SuitablePredictiveApplier.access$6600(StateMachine.access$3800(this.this$0));
    }
}
