package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.device.CameraDeviceHandler$CameraSessionId;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;

/* JADX INFO: loaded from: classes.dex */
class StateMachine$StatePause extends StateMachine$StatePhotoBase {
    private static final String TAG = "StateMachine.StatePause";
    final /* synthetic */ StateMachine this$0;

    @Override // com.sonyericsson.android.camera.controller.StateMachine$StatePhotoBase, com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFusionConditionChanged(Object... objArr) {
    }

    /* synthetic */ StateMachine$StatePause(StateMachine stateMachine, boolean z, StateMachine$1 stateMachine$1) {
        this(stateMachine, z);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private StateMachine$StatePause(StateMachine stateMachine, boolean z) {
        CapturingMode capturingMode;
        super(stateMachine, null);
        this.this$0 = stateMachine;
        this.mCaptureState = StateMachine$CaptureState.STATE_PAUSE;
        StateMachine.access$1200(stateMachine).hideDisplayFlashScreen();
        if (!StateMachine.access$2600(stateMachine).isRecorderWorking()) {
            StateMachine.access$2600(stateMachine).releaseRecorder();
        }
        StateMachine.access$2600(stateMachine).stopFaceDetection();
        StateMachine.access$2600(stateMachine).stopSceneRecognition();
        StateMachine.access$2600(stateMachine).stopFusionMonitoring();
        if (StateMachine.access$2800(stateMachine) != null) {
            StateMachine.access$1400(stateMachine);
        }
        if (!StateMachine.access$9100(stateMachine).isEmpty()) {
            StateMachine.access$9100(stateMachine).clear();
        }
        StateMachine.access$2600(stateMachine).stopPreview();
        StateMachine.access$600(stateMachine).removeStorageStateListener(StateMachine.access$5600(stateMachine));
        StateMachine.access$1800(stateMachine).commit();
        StateMachine.access$5700(stateMachine).stop();
        if (!StateMachine.access$500(stateMachine).getLaunchCondition().getOneShotMode().isEnabled() && (capturingMode = (CapturingMode) StateMachine.access$1800(stateMachine).get(UserSettingKey.CAPTURING_MODE)) != null) {
            StateMachine.access$13000(stateMachine).setCapturingMode((ModeSelectorInternalMode.exists(capturingMode) || capturingMode.equals(CapturingMode.FRONT_PHOTO)) ? CapturingMode.SCENE_RECOGNITION : capturingMode);
            StateMachine.access$13000(stateMachine).writePauseTime();
            StateMachine.access$13000(stateMachine).save();
        }
        if (z) {
            StateMachine.access$13100(stateMachine);
        }
        StateMachine.access$13200(stateMachine);
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void entry() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StatePause");
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleResume(Object... objArr) {
        CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId = (CameraDeviceHandler$CameraSessionId) objArr[1];
        StateMachine$StartupAction stateMachine$StartupAction = (StateMachine$StartupAction) objArr[2];
        if (StateMachine.access$2600(this.this$0).isCameraDisabled()) {
            StateMachine.access$1200(this.this$0).showMessageDialog(DialogId.ERROR_USE_OF_CAMERA_RESTRICTED, new Object[0]);
        } else {
            FastCapture fastCapture = (FastCapture) objArr[0];
            StateMachine.access$3400(this.this$0, new StateMachine$StateResume(this.this$0, cameraDeviceHandler$CameraSessionId, fastCapture, null, stateMachine$StartupAction, null), new Object[]{fastCapture, Boolean.valueOf(StateMachine.access$5000(this.this$0))});
        }
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$State
    public void handleFinalize(Object... objArr) {
        StateMachine.access$3400(this.this$0, new StateMachine$StateFinalize(this.this$0, null), objArr);
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
