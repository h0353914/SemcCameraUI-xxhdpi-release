package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateFinalize extends StateMachine$State {
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleRequestSetupHeadUpDisplay(Object... objArr) {
    }

    /* synthetic */ StateMachine$StateFinalize(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateFinalize(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_FINALIZE;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StateFinalize");
        }
        StateMachine.access$300(this.this$0).release();
        StateMachine.access$13600(this.this$0);
        StateMachine.access$2802(this.this$0, null);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnTakePictureDone(Object... objArr) {
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder = (RequestFactory$PhotoSavingRequestBuilder) objArr[0];
        if (CamLog.DEBUG) {
            CamLog.d("invoke id:" + requestFactory$PhotoSavingRequestBuilder.getRequestId());
        }
        StateMachine.access$3600(this.this$0, requestFactory$PhotoSavingRequestBuilder);
    }
}
