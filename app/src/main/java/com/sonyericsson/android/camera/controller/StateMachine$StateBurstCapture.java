package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.CapturePerformanceLogger;
import com.sonyericsson.android.camera.view.ViewFinder$HeadUpDisplaySetupState;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureOperation;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateBurstCapture extends StateMachine$StatePhotoBase {
    private static final int BURST_NUMBER_MAX = 100;
    private static final int BURST_NUMBER_MIN = 2;
    private static final int BURST_STATE_CAPTURING = 1;
    private static final int BURST_STATE_FINALIZE = 3;
    private static final int BURST_STATE_FINISH_AFTER_BUFFER_AVAILABLE = 4;
    private static final int BURST_STATE_INITIALIZE = 0;
    private static final int BURST_STATE_WAIT_FOR_BUFFER_AVAILABLE = 2;
    private static final String TAG = "StateMachine.StateBurstCapture";
    private int mBurstState;
    private final String mDataString;
    private int mIndex;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StateBurstCapture(StateMachine stateMachine, boolean z, StateMachine$1 stateMachine$1) {
        this(stateMachine, z);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateBurstCapture(StateMachine stateMachine, boolean z) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_BURST_CAPTURE;
        StateMachine.access$2600(stateMachine).prepareBurst();
        this.mIndex = 0;
        this.mDataString = new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.US).format(new Date());
        if (z) {
            this.mBurstState = 3;
        } else {
            this.mBurstState = 0;
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        ResearchUtil.getInstance().setManualBurstCount(this.mIndex);
        LocalResearchUtil.getInstance().setUserOperation(Event$CaptureOperation.SHOOTING, this.this$0.getCurrentCapturingMode());
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_FINISH, new Object[0]);
    }

    private void finishCapturing() {
        switch (this.mBurstState) {
            case 0:
            case 1:
                this.mBurstState = 3;
                break;
            case 2:
                this.mBurstState = 4;
                break;
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleRequestSetupHeadUpDisplay(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, ViewFinder$HeadUpDisplaySetupState.PHOTO_BURST_CAPTURE);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnPrepareBurstDone(Object... objArr) {
        boolean zBooleanValue = ((Boolean) objArr[0]).booleanValue();
        int i = this.mBurstState;
        if (i == 0) {
            if (zBooleanValue) {
                requestNextCapture();
                this.mBurstState = 1;
                return;
            } else {
                StateMachine.access$10900(this.this$0, this.this$0.createPhotoSavingRequest(SavingTaskManager$SavedFileType.PHOTO));
                StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCapture(this.this$0, null), new Object[0]);
                return;
            }
        }
        if (i != 3) {
            return;
        }
        if (zBooleanValue) {
            requestNextCapture();
        } else {
            StateMachine.access$10900(this.this$0, this.this$0.createPhotoSavingRequest(SavingTaskManager$SavedFileType.PHOTO));
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoCapture(this.this$0, null), new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCaptureCancel(Object... objArr) {
        finishCapturing();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnShutterDone(Object... objArr) {
        boolean zBooleanValue = ((Boolean) objArr[1]).booleanValue();
        if (CamLog.DEBUG) {
            CamLog.d("invoke count:" + this.mIndex + ", af:" + zBooleanValue);
        }
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_SHUTTER_DONE, Boolean.valueOf(zBooleanValue), Integer.valueOf(this.mIndex));
        if (this.mIndex >= 100) {
            finishCapturing();
        }
        switch (this.mBurstState) {
            case 0:
                throw new IllegalStateException("INITIALIZE cannot accept ON_SHUTTER_DONE event");
            case 1:
                if (StateMachine.access$2600(this.this$0).isBypassCameraNextShotAvailable()) {
                    if (StateMachine.access$1000(this.this$0, Storage$StorageType.INTERNAL)) {
                        requestNextCapture();
                        return;
                    } else {
                        requestStopBurstCapture();
                        return;
                    }
                }
                this.mBurstState = 2;
                return;
            case 2:
                throw new IllegalStateException("WAIT_FOR_BUFFER_AVAILABLE cannot accept ON_SHUTTER_DONE event");
            case 3:
                if (StateMachine.access$2600(this.this$0).isBypassCameraNextShotAvailable()) {
                    if (this.mIndex < 2) {
                        if (StateMachine.access$1000(this.this$0, Storage$StorageType.INTERNAL)) {
                            requestNextCapture();
                            return;
                        } else {
                            requestStopBurstCapture();
                            return;
                        }
                    }
                    requestStopBurstCapture();
                    return;
                }
                this.mBurstState = 4;
                return;
            default:
                return;
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnTakePictureDone(Object... objArr) {
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder = (RequestFactory$PhotoSavingRequestBuilder) objArr[0];
        if (CamLog.DEBUG) {
            CamLog.d("invoke id:" + requestFactory$PhotoSavingRequestBuilder.getRequestId());
        }
        StateMachine.access$3600(this.this$0, requestFactory$PhotoSavingRequestBuilder);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStoreCompleted(Object... objArr) {
        super.handleOnStoreCompleted(objArr);
        int i = this.mBurstState;
        if (i == 2) {
            if (!StateMachine.access$2600(this.this$0).isBypassCameraNextShotAvailable()) {
                CamLog.e("ON_STORE_COMPLETED is received. But buffer is not available.");
                return;
            } else {
                this.mBurstState = 1;
                requestNextCapture();
                return;
            }
        }
        if (i != 4) {
            return;
        }
        if (!StateMachine.access$2600(this.this$0).isBypassCameraNextShotAvailable()) {
            CamLog.e("ON_STORE_COMPLETED is received. But buffer is not available.");
            return;
        }
        if (this.mIndex < 2) {
            if (StateMachine.access$1000(this.this$0, Storage$StorageType.INTERNAL)) {
                requestNextCapture();
                return;
            } else {
                requestStopBurstCapture();
                return;
            }
        }
        requestStopBurstCapture();
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
        switch (this.mBurstState) {
            case 1:
                this.mBurstState = 3;
                return;
            case 2:
                this.mBurstState = 4;
                return;
            default:
                return;
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnObjectTracked(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_TRACKED_OBJECT_STATE_UPDATED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnFaceDetected(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objArr[0]);
    }

    private void requestNextCapture() {
        if (StateMachine.access$4000(this.this$0) != null && StateMachine.access$4000(this.this$0).mCommonStatus.savedFileType == SavingTaskManager$SavedFileType.BURST) {
            StateMachine.access$4000(this.this$0).setFinalInSavingGroup(false);
        }
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest = this.this$0.createPhotoSavingRequest(SavingTaskManager$SavedFileType.BURST);
        requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest.setRequestId(StateMachine.access$1200(this.this$0).getRequestId(false));
        requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest.setSaveTimeForCaptureGroup(this.mDataString);
        requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest.setCaptureIdForCaptureGourp(this.mIndex);
        StateMachine.access$10900(this.this$0, requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest);
        this.mIndex++;
    }

    private void requestStopBurstCapture() {
        StateMachine.access$2600(this.this$0).finishBurst();
        StateMachine.access$3500(this.this$0, false);
        StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReady(this.this$0, true), new Object[0]);
        CapturePerformanceLogger.setNumOfBurstTaken(this.mIndex);
    }
}
