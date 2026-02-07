package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StatePhotoAfSearch extends StateMachine$StatePhotoBase {
    private static final String TAG = "StateMachine.StatePhotoAfSearch";
    private boolean mIsCancelRequested;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StatePhotoAfSearch(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StatePhotoAfSearch(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mIsCancelRequested = false;
        this.mCaptureState = StateMachine$CaptureState.STATE_PHOTO_AF_SEARCH;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnAutoFocusDone(Object... objArr) {
        boolean zBooleanValue = ((Boolean) objArr[1]).booleanValue();
        if (this.mIsCancelRequested) {
            StateMachine.access$3500(this.this$0, false);
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReady(this.this$0, true), new Object[0]);
        } else {
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoAfDone(this.this$0, zBooleanValue, null), objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3500(this.this$0, true);
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleClearFocus(Object... objArr) {
        handleCaptureCancel(objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnObjectTracked(Object... objArr) {
        if (PlatformCapability.isTrackingFocusDuringLockSupported(this.this$0.getCurrentCameraId())) {
            StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, objArr[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnFaceDetected(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureCancel(Object... objArr) {
        this.mIsCancelRequested = true;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureBurst(Object... objArr) {
        if (this.mIsCancelRequested) {
            return;
        }
        if (StateMachine.access$7500(this.this$0, true)) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateBurstCaptureWaitForAfDone(this.this$0, null), objArr);
        } else {
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCaptureWaitForAfDone(this.this$0, false, null), objArr);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCapture(Object... objArr) {
        if (this.mIsCancelRequested) {
            return;
        }
        StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCaptureWaitForAfDone(this.this$0, false, null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageMounted(Object... objArr) {
        StateMachine$SuitablePredictiveApplier.access$6600(StateMachine.access$3800(this.this$0));
    }
}
