package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.recorder.RecorderController$RecorderListener;
import com.sonyericsson.android.camera.recorder.RecorderController$Result;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.RequestFactory$VideoSavingRequestBuilder;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$5 implements RecorderController$RecorderListener {
    private RequestFactory$VideoSavingRequestBuilder mVideoSavingRequestBuilder = null;
    final /* synthetic */ StateMachine this$0;

    StateMachine$5(StateMachine stateMachine) {
        this.this$0 = stateMachine;
    }

    static /* synthetic */ RequestFactory$VideoSavingRequestBuilder access$14700(StateMachine$5 stateMachine$5) {
        return stateMachine$5.mVideoSavingRequestBuilder;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController$RecorderListener
    public void setSavingRequestBuilder(RequestFactory$VideoSavingRequestBuilder requestFactory$VideoSavingRequestBuilder) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        this.mVideoSavingRequestBuilder = requestFactory$VideoSavingRequestBuilder;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController$RecorderListener
    public void onRecordProgress(long j) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke progressMillis:" + j);
        }
        StateMachine.access$1700(this.this$0).post(new StateMachine$5$1(this, (int) j));
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController$RecorderListener
    public void onRecordError(int i, int i2) {
        CamLog.e("ERROR:MediaRecorder (" + i + ", " + i2 + ")");
        StateMachine.access$1700(this.this$0).post(new StateMachine$5$2(this));
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderController$RecorderListener
    public void onRecordFinished(RecorderController$Result recorderController$Result) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke result:" + recorderController$Result);
        }
        StateMachine.access$1700(this.this$0).post(new StateMachine$5$3(this, recorderController$Result));
    }
}
