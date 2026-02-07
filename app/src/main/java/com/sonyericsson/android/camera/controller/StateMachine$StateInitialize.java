package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraSessionId;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonymobile.cameracommon.evf.Evf;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateInitialize extends StateMachine$State {
    private Evf mEvf;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StateInitialize(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateInitialize(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_INITIALIZE;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleResume(Object... objArr) {
        CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId = (CameraDeviceHandler$CameraSessionId) objArr[1];
        StateMachine$StartupAction stateMachine$StartupAction = (StateMachine$StartupAction) objArr[2];
        if (StateMachine.access$2600(this.this$0).isCameraDisabled()) {
            StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.ERROR_USE_OF_CAMERA_RESTRICTED, new Object[0]);
            return;
        }
        switch (StateMachine.access$2600(this.this$0).getPreProcessState()) {
            case PRE_SCAN_DONE:
                StateMachine.access$2600(this.this$0).preCapture();
                break;
            case PRE_CAPTURE_DONE:
                RequestFactory$PhotoSavingRequestBuilder andClearPreCaptureResult = StateMachine.access$2600(this.this$0).getAndClearPreCaptureResult();
                if (andClearPreCaptureResult != null) {
                    StateMachine.access$4800(this.this$0, StateMachine$TransitterEvent.EVENT_ON_PRE_TAKE_PICTURE_DONE, new Object[]{andClearPreCaptureResult});
                }
                break;
        }
        FastCapture fastCapture = (FastCapture) objArr[0];
        StateMachine.access$3400(this.this$0, new StateMachine$StateResume(this.this$0, cameraDeviceHandler$CameraSessionId, fastCapture, this.mEvf, stateMachine$StartupAction, null), new Object[]{fastCapture, Boolean.valueOf(StateMachine.access$5000(this.this$0)), objArr});
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnInitialAutoFocusDone(Object... objArr) {
        StateMachine.access$2600(this.this$0).preCapture();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnPreShutterDone(Object... objArr) {
        StateMachine.access$4800(this.this$0, StateMachine$TransitterEvent.EVENT_ON_PRE_SHUTTER_DONE, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnPreTakePictureDone(Object... objArr) {
        StateMachine.access$4800(this.this$0, StateMachine$TransitterEvent.EVENT_ON_PRE_TAKE_PICTURE_DONE, objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnEvfPrepared(Object... objArr) {
        this.mEvf = (Evf) objArr[0];
    }
}
