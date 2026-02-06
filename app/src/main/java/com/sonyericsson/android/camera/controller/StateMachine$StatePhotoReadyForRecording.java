package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class StateMachine$StatePhotoReadyForRecording extends StateMachine$StatePhotoBase {
    private final boolean mBySideSense;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StatePhotoReadyForRecording(StateMachine stateMachine, boolean z, StateMachine$1 stateMachine$1) {
        this(stateMachine, z);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StatePhotoReadyForRecording(StateMachine stateMachine, boolean z) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_PHOTO_READY_FOR_RECORDING;
        this.mBySideSense = z;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageError(Object... objArr) {
        Storage$StorageType storage$StorageType = (Storage$StorageType) objArr[0];
        if (((Storage$StorageState) objArr[1]) == Storage$StorageState.CORRUPT) {
            CamLog.w("Storage corruption : type = " + storage$StorageType + ", state = " + StateMachine.access$1100(this.this$0));
            if (CamLog.DEBUG) {
                throw new IllegalStateException();
            }
        }
        if (StateMachine.access$700(this.this$0, StateMachine.access$400(this.this$0))) {
            return;
        }
        StateMachine.access$3400(this.this$0, new StateMachine$StateWarning(this.this$0, null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCapture(Object... objArr) {
        requestStartRecording();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureCancel(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoReady(this.this$0), new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStartRecording(Object... objArr) {
        requestStartRecording();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnObjectTracked(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, objArr[0]);
    }

    private void requestStartRecording() {
        PerfLog.START_REC.begin();
        if (!StateMachine.access$600(this.this$0).canPushStoreRequest(StateMachine.access$400(this.this$0))) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateVideoReady(this.this$0), new Object[0]);
            return;
        }
        if (!StateMachine.access$2600(this.this$0).isCameraDeviceStatusReady()) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateVideoReady(this.this$0), new Object[0]);
            return;
        }
        StateMachine.access$10300(this.this$0);
        StateMachine.access$1200(this.this$0).hideHudIcons();
        StateMachine.access$3400(this.this$0, new StateMachine$StatePrepareForRecording(this.this$0, null), new Object[0]);
        StateMachine.access$10502(this.this$0, new StateMachine$StartRecordingTask(this.this$0, this.mBySideSense));
        StateMachine.access$1700(this.this$0).post(StateMachine.access$10500(this.this$0));
        PerfLog.START_REC.end();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnFaceDetected(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleTriggerSlowMotion(Object... objArr) {
        requestStartRecording();
    }
}
