package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.controller.launcher.ApplicationLauncher;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.angle.VariableIndex;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateVideoBase extends StateMachine$State {
    final /* synthetic */ StateMachine this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StateMachine$StateVideoBase(StateMachine stateMachine) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOrientationChanged(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, objArr[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnOnePreviewFrameUpdated(Object... objArr) {
        StateMachine.access$11202(this.this$0, new ChapterThumbnail((byte[]) objArr[0], (Integer) objArr[1], (Rect) objArr[2]));
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSemiAutoEnabled(Object... objArr) {
        StateMachine.access$3002(this.this$0, true);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnSemiAutoDisabled(Object... objArr) {
        StateMachine.access$3002(this.this$0, false);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnStoreCompleted(Object... objArr) {
        super.handleOnStoreCompleted(objArr);
        StoreDataResult storeDataResult = (StoreDataResult) objArr[0];
        if (StateMachine.access$500(this.this$0).isOneShot()) {
            StateMachine.access$10600(this.this$0, storeDataResult);
        } else if (this.this$0.getCurrentCapturingMode() == CapturingMode.SLOW_MOTION && this.this$0.getUserSetting().get(UserSettingKey.SLOW_MOTION) == SlowMotion.STANDARD_SLOW_MOTION && !PlatformCapability.hasDeviceError()) {
            ApplicationLauncher.launchVideoEditor(StateMachine.access$500(this.this$0), storeDataResult);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnRecordingError(Object... objArr) {
        StateMachine.access$11300(this.this$0);
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

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePrepareZoom(Object... objArr) {
        VariableIndex variableIndex = (VariableIndex) objArr[0];
        handleClearFocus(objArr);
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_START, Integer.valueOf(variableIndex.getIndex()));
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePerformZoom(Object... objArr) {
        VariableIndex variableIndex = (VariableIndex) objArr[0];
        StateMachine.access$2600(this.this$0).setZoomAndCommit(variableIndex.getRatio());
        StateMachine.access$3200(this.this$0, variableIndex.getIndex());
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFinishZoom(Object... objArr) {
        StateMachine.access$1200(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_STOP, new Object[0]);
    }
}
