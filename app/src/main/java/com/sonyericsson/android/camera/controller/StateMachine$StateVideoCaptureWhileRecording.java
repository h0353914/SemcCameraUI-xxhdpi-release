package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;

class StateMachine$StateVideoCaptureWhileRecording extends StateMachine$State {
    private final boolean mIsPaused;
    private boolean mIsPausingRequested;
    private boolean mIsReturnToVideoRecordingRequired;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StateVideoCaptureWhileRecording(StateMachine stateMachine, boolean z, StateMachine$1 stateMachine$1) {
        this(stateMachine, z);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateVideoCaptureWhileRecording(StateMachine stateMachine, boolean z) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mIsReturnToVideoRecordingRequired = false;
        this.mCaptureState = StateMachine$CaptureState.STATE_VIDEO_CAPTURE_WHILE_RECORDING;
        this.mIsPaused = z;
        this.mIsPausingRequested = z;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnTakePictureDone(Object... objArr) {
        StateMachine.access$3600(this.this$0, (RequestFactory$PhotoSavingRequestBuilder) objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStoreRequested(Object... objArr) {
        if (this.mIsPaused) {
            if (this.mIsPausingRequested) {
                StateMachine.access$3400(this.this$0, new StateMachine$StateVideoRecordingPausing(this.this$0, null), objArr);
            } else {
                StateMachine.access$2600(this.this$0).requestOnePreviewFrame();
                StateMachine.access$12600(this.this$0);
            }
        } else if (!this.mIsPausingRequested) {
            StateMachine.access$3400(this.this$0, new StateMachine$StateVideoRecording(this.this$0, this.mIsReturnToVideoRecordingRequired), objArr);
        } else {
            StateMachine.access$12100(this.this$0);
        }
        if (this.mIsReturnToVideoRecordingRequired) {
            StateMachine.access$11400(this.this$0, false);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePauseRecording(Object... objArr) {
        this.mIsPausingRequested = true;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleResumeRecording(Object... objArr) {
        this.mIsPausingRequested = false;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$11700(this.this$0, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStopRecording(Object... objArr) {
        this.mIsReturnToVideoRecordingRequired = true;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnShutterDone(Object... objArr) {
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder = (RequestFactory$PhotoSavingRequestBuilder) objArr[0];
        synchronized (this) {
            if (StateMachine.access$12700(this.this$0) != null) {
                StateMachine.access$12700(this.this$0).setClickThumbnailProgressListener(null);
                requestFactory$PhotoSavingRequestBuilder.setRequestId(StateMachine.access$12700(this.this$0).createProvisionalContentFrame());
            } else {
                requestFactory$PhotoSavingRequestBuilder.setRequestId(-1);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOnePreviewFrameUpdated(Object... objArr) {
        StateMachine.access$11202(this.this$0, new ChapterThumbnail((byte[]) objArr[0], (Integer) objArr[1], (Rect) objArr[2]));
        StateMachine.access$12000(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageError(Object... objArr) {
        if (((Storage$StorageState) objArr[1]) == Storage$StorageState.CORRUPT) {
            CamLog.w("Storage corruption : state = " + StateMachine.access$1100(this.this$0));
            if (CamLog.DEBUG) {
                throw new IllegalStateException();
            }
        }
        StateMachine.access$11400(this.this$0, true);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnVideoRecordingDone(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateVideoStore(this.this$0, (StateMachine$1) null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnFaceDetected(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnRecordingError(Object... objArr) {
        StateMachine.access$11300(this.this$0);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOrientationChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnReachBatteryLimit(Object... objArr) {
        StateMachine.access$11400(this.this$0, true);
        StateMachine.access$3400(this.this$0, new StateMachine$StateFatal(this.this$0, true, false, null), objArr);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_NOTIFY_BATTERY_CRITICAL, true);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFusionConditionChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_FUSION_CONDITION, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnHeatedOverCritical(Object... objArr) {
        if (StateMachine.access$2600(this.this$0).isRecorderWorking()) {
            StateMachine.access$11400(this.this$0, false);
        }
        super.handleOnHeatedOverCritical(objArr);
    }
}
