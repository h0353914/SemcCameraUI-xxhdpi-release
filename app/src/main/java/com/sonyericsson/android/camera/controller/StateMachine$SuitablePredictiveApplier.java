package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveCapture;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$SuitablePredictiveApplier {
    private boolean isSuppressed;
    private ArrayList<Object> mSuppressors;
    final /* synthetic */ StateMachine this$0;

    private StateMachine$SuitablePredictiveApplier(StateMachine stateMachine) {
        this.this$0 = stateMachine;
        this.isSuppressed = false;
    }

    /* synthetic */ StateMachine$SuitablePredictiveApplier(StateMachine stateMachine, StateMachine$1 stateMachine$1) {
        this(stateMachine);
    }

    static /* synthetic */ void access$3900(StateMachine$SuitablePredictiveApplier stateMachine$SuitablePredictiveApplier, Object obj) {
        stateMachine$SuitablePredictiveApplier.leaveSuppressor(obj);
    }

    static /* synthetic */ void access$6600(StateMachine$SuitablePredictiveApplier stateMachine$SuitablePredictiveApplier) {
        stateMachine$SuitablePredictiveApplier.attemptCommitSettings();
    }

    static /* synthetic */ void access$8800(StateMachine$SuitablePredictiveApplier stateMachine$SuitablePredictiveApplier, Object obj) {
        stateMachine$SuitablePredictiveApplier.entrySuppressor(obj);
    }

    private void entrySuppressor(Object obj) {
        if (((PredictiveCapture) StateMachine.access$1800(this.this$0).get(UserSettingKey.PREDICTIVE_CAPTURE)) == PredictiveCapture.OFF) {
            return;
        }
        if (this.mSuppressors == null) {
            this.mSuppressors = new ArrayList<>();
        }
        if (this.mSuppressors.contains(obj)) {
            return;
        }
        this.mSuppressors.add(obj);
        attemptCommitSettings();
    }

    private void leaveSuppressor(Object obj) {
        if (this.mSuppressors == null || Boolean.valueOf(this.mSuppressors.remove(obj)) == null) {
            return;
        }
        attemptCommitSettings();
    }

    private void attemptCommitSettings() {
        if (this.mSuppressors == null || this.mSuppressors.isEmpty()) {
            Storage$StorageState currentState = StateMachine.access$600(this.this$0).getCurrentState(StateMachine.access$400(this.this$0));
            PredictiveCapture predictiveCapture = PredictiveCapture.OFF;
            if (currentState == Storage$StorageState.AVAILABLE && StateMachine.access$1800(this.this$0).get(UserSettingKey.SELF_TIMER) == SelfTimer.OFF) {
                predictiveCapture = (PredictiveCapture) StateMachine.access$1800(this.this$0).get(UserSettingKey.PREDICTIVE_CAPTURE);
            }
            StateMachine.access$2600(this.this$0).setPredictiveCaptureAndCommit(predictiveCapture);
            this.isSuppressed = false;
            return;
        }
        if (!this.isSuppressed) {
            StateMachine.access$2600(this.this$0).setPredictiveCaptureAndCommit(PredictiveCapture.OFF);
        }
        this.isSuppressed = true;
    }
}
