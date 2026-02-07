package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$MeasurementKey;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureOperation;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;
import com.sonymobile.cameracommon.research.parameters.Event$Category;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StatePhotoCapture extends StateMachine$StatePhotoBase {
    private static final String TAG = "StateMachine.StatePhotoCapture";
    private boolean mIsStorageError;
    private StateMachine$NextCaptureCondition mNextCapture;
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnPreShutterDone(Object... objArr) {
    }

    /* synthetic */ StateMachine$StatePhotoCapture(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StatePhotoCapture(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mIsStorageError = false;
        this.mCaptureState = StateMachine$CaptureState.STATE_PHOTO_CAPTURE;
        if (StateMachine.access$500(stateMachine).isOneShot()) {
            this.mNextCapture = StateMachine$NextCaptureCondition.UNACCEPTABLE;
        } else {
            this.mNextCapture = StateMachine$NextCaptureCondition.READY;
        }
        StateMachine.access$1200(stateMachine).cancelPredictiveCaptureIndicatorAnimation();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURE_FINISH, new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnPreTakePictureDone(Object... objArr) {
        if (!StateMachine.access$600(this.this$0).isStorageActivated()) {
            StateMachine.access$4800(this.this$0, StateMachine$TransitterEvent.EVENT_ON_PRE_TAKE_PICTURE_DONE, objArr);
            return;
        }
        Storage$StorageType storage$StorageTypeAccess$400 = StateMachine.access$400(this.this$0);
        boolean z = StateMachine.access$600(this.this$0).getCurrentState(Storage$StorageType.EXTERNAL_CARD) == Storage$StorageState.CORRUPT;
        if (!StateMachine.access$1000(this.this$0, storage$StorageTypeAccess$400) || z) {
            ((RequestFactory$PhotoSavingRequestBuilder) objArr[0]).close();
            StateMachine.access$2600(this.this$0).prepareCaptureImageReader(null);
            StateMachine.access$3500(this.this$0, false);
            StateMachine.access$2600(this.this$0).cancelPreProcessState();
            if (z) {
                StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.MEMORY_SD_UNAVAILABLE_FOR_CORRUPT, new Object[0]);
                StateMachine.access$3400(this.this$0, new StateMachine$StateFatal(this.this$0, false, false, null), new Object[0]);
                return;
            } else {
                StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReady(this.this$0, true), new Object[0]);
                return;
            }
        }
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder = (RequestFactory$PhotoSavingRequestBuilder) objArr[0];
        StateMachine.access$4002(this.this$0, null);
        StateMachine.access$4102(this.this$0, null);
        StateMachine.access$11100(this.this$0);
        ByteBuffer imageReaderData = requestFactory$PhotoSavingRequestBuilder.getImageReaderData();
        byte[] bArr = new byte[imageReaderData.remaining()];
        imageReaderData.get(bArr);
        requestFactory$PhotoSavingRequestBuilder.setImageData(bArr);
        requestFactory$PhotoSavingRequestBuilder.close();
        StateMachine.access$2600(this.this$0).prepareCaptureImageReader(new StateMachine$StatePhotoCapture$1(this));
        requestFactory$PhotoSavingRequestBuilder.setStorageType(StateMachine.access$400(this.this$0));
        StateMachine.access$3600(this.this$0, requestFactory$PhotoSavingRequestBuilder);
        ResearchUtil.getInstance().setTimeAfDone();
        ResearchUtil.getInstance().setTimeCaptureStart();
        ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.FAST_CAPTURING_LAUNCH);
        ResearchUtil.getInstance().setOrientation(requestFactory$PhotoSavingRequestBuilder.mCommonStatus.orientation);
        LocalResearchUtil.getInstance().sendSemiAutoSettingValues(Event$Category.SETTINGS_PHOTO);
        LocalResearchUtil.getInstance().setUserOperation(Event$CaptureOperation.SHOOTING, this.this$0.getCurrentCapturingMode());
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleCapture(Object... objArr) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke mNextCapture:" + this.mNextCapture);
        }
        if (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition[this.mNextCapture.ordinal()] == 1) {
            if (StateMachine.access$1000(this.this$0, StateMachine.access$400(this.this$0))) {
                this.mNextCapture = StateMachine$NextCaptureCondition.REQUESTED;
            }
        } else if (CamLog.DEBUG) {
            CamLog.d("Capture button is ignored. mNextCapture:" + this.mNextCapture + ", Saving request count:" + StateMachine.access$2600(this.this$0).getRemainSavingPhotoRequestCount());
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnShutterDone(Object... objArr) {
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder = (RequestFactory$PhotoSavingRequestBuilder) objArr[0];
        StateMachine.access$1200(this.this$0).hideDisplayFlashScreen();
        StateMachine.access$1200(this.this$0).onCaptureDone();
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION, new Object[0]);
        if (requestFactory$PhotoSavingRequestBuilder.getSomcType() == 100) {
            StateMachine.access$1200(this.this$0).startPredictiveCaptureIndicatorAnimation();
        } else {
            StateMachine.access$1200(this.this$0).cancelPredictiveCaptureIndicatorAnimation();
        }
        LocalResearchUtil.getInstance().setUserOperation(Event$CaptureOperation.SHOOTING, this.this$0.getCurrentCapturingMode());
        if (StateMachine.access$2600(this.this$0).isBypassCameraNextShotAvailable() && !this.mIsStorageError) {
            if (requestNextCaptureIfRequired()) {
                ResearchUtil.getInstance().setContinuousCapture();
                LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.SHOT_TO_SHOT_DELAY);
                return;
            } else {
                StateMachine.access$3500(this.this$0, false);
                if (StateMachine.access$500(this.this$0).isOneShot()) {
                    return;
                }
                StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReady(this.this$0, true), new Object[0]);
                return;
            }
        }
        this.mNextCapture = StateMachine$NextCaptureCondition.UNACCEPTABLE;
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
        if (StateMachine.access$500(this.this$0).isOneShot()) {
            StateMachine.access$10600(this.this$0, (StoreDataResult) objArr[0]);
        }
        if (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition[this.mNextCapture.ordinal()] == 3 && StateMachine.access$2600(this.this$0).isBypassCameraNextShotAvailable()) {
            StateMachine.access$3500(this.this$0, false);
            StateMachine.access$3400(this.this$0, new StateMachine$StatePhotoReady(this.this$0, true), new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleStorageError(Object... objArr) {
        this.mIsStorageError = true;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$1200(this.this$0).setDisplayFlashRequired(false);
        StateMachine.access$1200(this.this$0).setDisplayFlashColor(255, 255, 255);
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    private boolean requestNextCaptureIfRequired() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke mNextCapture:" + this.mNextCapture);
        }
        if (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$NextCaptureCondition[this.mNextCapture.ordinal()] != 2) {
            return false;
        }
        this.mNextCapture = StateMachine$NextCaptureCondition.READY;
        StateMachine.access$10900(this.this$0, this.this$0.createPhotoSavingRequest(SavingTaskManager$SavedFileType.PHOTO));
        return true;
    }
}
