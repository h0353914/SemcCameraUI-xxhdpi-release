package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.FrontAngle;
import com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraSessionId;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonymobile.cameracommon.evf.Evf;
import com.sonymobile.cameracommon.research.ResearchUtil;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StateCameraSwitching extends StateMachine$State {
    private static final String TAG = "StateMachine.StateCameraSwitching";
    private final FastCapture mFastCapture;
    private boolean mIsCameraOpened;
    private boolean mIsEvfPrepared;
    private final CameraDeviceHandler$CameraSessionId mSessionId;
    final /* synthetic */ StateMachine this$0;

    /* synthetic */ StateMachine$StateCameraSwitching(StateMachine stateMachine, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, FastCapture fastCapture, StateMachine$1 stateMachine$1) {
        this(stateMachine, cameraDeviceHandler$CameraSessionId, fastCapture);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StateCameraSwitching(StateMachine stateMachine, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, FastCapture fastCapture) {
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mIsEvfPrepared = false;
        this.mIsCameraOpened = false;
        this.mCaptureState = StateMachine$CaptureState.STATE_CAMERA_SWITCHING;
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
        this.mFastCapture = fastCapture;
        StateMachine.access$1700(stateMachine).removeCallbacks(StateMachine.access$5200(stateMachine));
        StateMachine.access$1700(stateMachine).postDelayed(StateMachine.access$5200(stateMachine), 7000L);
    }

    private void moveStateIfCaptureReady() {
        if (this.mIsCameraOpened && this.mIsEvfPrepared) {
            if (this.this$0.getCurrentCapturingMode().isFront() && StateMachine.access$1800(this.this$0).get(UserSettingKey.FRONT_ANGLE) == FrontAngle.CROPPED) {
                StateMachine.access$2500(this.this$0);
            }
            StateMachine.access$2600(this.this$0).startPreview();
            if (StateMachine.access$5300(this.this$0)) {
                StateMachine.access$2600(this.this$0).startFusionMonitoring();
            }
            StateMachine.access$5400(this.this$0, this.mFastCapture, StateMachine$StartupAction.NONE);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnCameraDeviceOpened(Object... objArr) {
        if (((CameraDeviceHandler$CameraSessionId) objArr[0]) == this.mSessionId) {
            this.mIsCameraOpened = true;
            moveStateIfCaptureReady();
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleOnEvfPrepared(Object... objArr) {
        StateMachine.access$2600(this.this$0).setPreviewSurface(((Evf) objArr[0]).asSurface());
        this.mIsEvfPrepared = true;
        moveStateIfCaptureReady();
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleResumeTimeout(Object... objArr) {
        ResearchUtil.getInstance().setCameraNotAvailableFailedToOpen();
        CamLog.i("StateMachine.StateCameraSwitching", "[CameraNotAvailable] resume timeout.");
        PlatformCapability.setDeviceError(true);
        StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.ERROR_IN_USE_BY_ANOTHER_APPLICATION, new Object[0]);
        StateMachine.access$3400(this.this$0, new StateMachine$StateWarning(this.this$0, null), new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handlePause(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StatePause(this.this$0, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void exit() {
        super.exit();
        StateMachine.access$1700(this.this$0).removeCallbacks(StateMachine.access$5200(this.this$0));
    }
}
