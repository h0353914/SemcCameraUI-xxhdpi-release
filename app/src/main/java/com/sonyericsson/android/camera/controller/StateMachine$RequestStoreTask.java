package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;

class StateMachine$RequestStoreTask implements Runnable {
    private final RequestFactory$PhotoSavingRequestBuilder mRequest;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$RequestStoreTask(StateMachine stateMachine, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder, StateMachine$1 stateMachine$1) {
        this(stateMachine, requestFactory$PhotoSavingRequestBuilder);
    }

    static /* synthetic */ RequestFactory$PhotoSavingRequestBuilder access$15000(StateMachine$RequestStoreTask stateMachine$RequestStoreTask) {
        return stateMachine$RequestStoreTask.mRequest;
    }

    private StateMachine$RequestStoreTask(StateMachine stateMachine, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        this.this$0 = stateMachine;
        this.mRequest = requestFactory$PhotoSavingRequestBuilder;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke RequestStoreTask");
        }
        synchronized (this.this$0) {
            if (StateMachine.access$14900(this.this$0, this.mRequest) && StateMachine.access$12700(this.this$0) != null) {
                StateMachine.access$500(this.this$0).runOnUiThread(new StateMachine$RequestStoreTask$1(this));
                return;
            }
            if (StateMachine.access$12700(this.this$0) != null || StateMachine.access$1100(this.this$0).getCaptureState() == StateMachine$CaptureState.STATE_PAUSE || StateMachine.access$1100(this.this$0).getCaptureState() == StateMachine$CaptureState.STATE_FINALIZE) {
                StateMachine.access$15100(this.this$0, this.mRequest);
            } else {
                if (this.mRequest.getShouldUpdateOrientationBeforeStoring()) {
                    this.mRequest.mCommonStatus.orientation = StateMachine.access$15200(this.this$0);
                }
                if (StateMachine.access$500(this.this$0).isDeviceInSecurityLock()) {
                    if (this.mRequest.mCommonStatus.takenByFastCapture || StateMachine.access$14900(this.this$0, this.mRequest)) {
                        StateMachine.access$15300(this.this$0).add(this.mRequest);
                    } else {
                        StateMachine.access$15100(this.this$0, this.mRequest);
                    }
                } else {
                    this.mRequest.setRequestId(-1);
                    StateMachine.access$15100(this.this$0, this.mRequest);
                }
            }
            StateMachine.access$1700(this.this$0).post(new StateMachine$RequestStoreTask$2(this));
        }
    }
}
