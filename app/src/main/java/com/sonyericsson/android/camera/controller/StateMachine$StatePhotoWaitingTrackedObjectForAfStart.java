package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;

class StateMachine$StatePhotoWaitingTrackedObjectForAfStart extends StateMachine$State {
    boolean mIsAutoFocusStarted;
    boolean mIsBurstCaptureRequired;
    boolean mIsCaptureRequired;
    boolean mIsFirstCallback;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StatePhotoWaitingTrackedObjectForAfStart(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StatePhotoWaitingTrackedObjectForAfStart(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mIsAutoFocusStarted = false;
        this.mIsFirstCallback = true;
        this.mIsCaptureRequired = false;
        this.mIsBurstCaptureRequired = false;
        this.mCaptureState = StateMachine$CaptureState.STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnObjectTracked(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, objArr[0]);
        if (((CameraParameters$ObjectTrackingResult) objArr[0]).mIsLost || this.mIsFirstCallback) {
            this.mIsFirstCallback = false;
            return;
        }
        StateMachine.access$7000(this.this$0);
        this.mIsAutoFocusStarted = true;
        if (this.mIsCaptureRequired) {
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCaptureWaitForAfDone(this.this$0, false, null), new Object[0]);
        } else if (this.mIsBurstCaptureRequired) {
            if (StateMachine.access$7500(this.this$0, true)) {
                StateMachine.access$3400(this.this$0, new StateMachine$StateBurstCaptureWaitForAfDone(this.this$0, null), objArr);
            } else {
                StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoAfSearch(this.this$0, null), new Object[0]);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartAfAfterObjectTracked(Object... objArr) {
        if (StateMachine.access$2600(this.this$0).isCameraDeviceStatusReady() && !this.mIsAutoFocusStarted && PlatformCapability.isObjectTrackingSupported(this.this$0.getCurrentCameraId()) && StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0))) {
            Rect rect = (Rect) objArr[1];
            StateMachine.access$1400(this.this$0);
            StateMachine.access$7900(this.this$0, rect);
            this.mIsAutoFocusStarted = false;
            this.mIsCaptureRequired = false;
            this.mIsBurstCaptureRequired = false;
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnObjectLost(Object... objArr) {
        super.handleOnObjectLost(objArr);
        if (this.mIsCaptureRequired) {
            StateMachine.access$7000(this.this$0);
            this.mIsAutoFocusStarted = true;
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCaptureWaitForAfDone(this.this$0, false, null), new Object[0]);
        } else if (this.mIsBurstCaptureRequired) {
            StateMachine.access$7000(this.this$0);
            this.mIsAutoFocusStarted = true;
            if (StateMachine.access$7500(this.this$0, true)) {
                StateMachine.access$3400(this.this$0, new StateMachine$StateBurstCaptureWaitForAfDone(this.this$0, null), objArr);
            } else {
                StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoAfSearch(this.this$0, null), new Object[0]);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureCancel(Object... objArr) {
        if (this.mIsAutoFocusStarted) {
            StateMachine.access$3500(this.this$0, true);
        }
        StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReady(this.this$0, true), new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleClearFocus(Object... objArr) {
        handleCaptureCancel(objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCapture(Object... objArr) {
        if (this.mIsBurstCaptureRequired) {
            return;
        }
        this.mIsCaptureRequired = true;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        if (this.mIsAutoFocusStarted) {
            StateMachine.access$3500(this.this$0, true);
        }
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFusionConditionChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_FUSION_CONDITION, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureBurst(Object... objArr) {
        if (this.mIsCaptureRequired) {
            return;
        }
        this.mIsBurstCaptureRequired = true;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageMounted(Object... objArr) {
        StateMachine$SuitablePredictiveApplier.access$6600(StateMachine.access$3800(this.this$0));
    }
}
