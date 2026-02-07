package com.sonyericsson.android.camera.device;

import android.os.SystemClock;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveCapture;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.controller.StateMachine;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.CapturePerformanceLogger;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonymobile.cameracommon.research.ResearchUtil;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl implements Runnable {
    private final int mCaptureRequestNum;
    private final boolean mIsAfSuccess;
    private final RequestFactory$PhotoSavingRequestBuilder mRequest;
    final /* synthetic */ CameraDeviceHandler$BypassCameraControllerCallbackImpl this$1;

    /* synthetic */ CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl(CameraDeviceHandler$BypassCameraControllerCallbackImpl cameraDeviceHandler$BypassCameraControllerCallbackImpl, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder, int i, boolean z, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler$BypassCameraControllerCallbackImpl, requestFactory$PhotoSavingRequestBuilder, i, z);
    }

    private CameraDeviceHandler$BypassCameraControllerCallbackImpl$ShutterDoneHandlerCallbackImpl(CameraDeviceHandler$BypassCameraControllerCallbackImpl cameraDeviceHandler$BypassCameraControllerCallbackImpl, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder, int i, boolean z) {
        this.this$1 = cameraDeviceHandler$BypassCameraControllerCallbackImpl;
        this.mRequest = requestFactory$PhotoSavingRequestBuilder;
        this.mCaptureRequestNum = i;
        this.mIsAfSuccess = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("ShutterDoneHandlerCallbackImpl invoked pre-process:" + CameraDeviceHandler.access$2700(this.this$1.this$0));
        }
        if (CapturePerformanceLogger.get(this.mRequest) != null) {
            CapturePerformanceLogger.get(this.mRequest).shutterDone = SystemClock.uptimeMillis();
        }
        if (CameraDeviceHandler.access$2700(this.this$1.this$0) == CameraDeviceHandler$PreProcessState.NOT_STARTED || CameraDeviceHandler.access$2700(this.this$1.this$0) == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_DONE) {
            if (CameraDeviceHandler.access$3100(this.this$1.this$0) != null) {
                updatePredictiveCaptureNumForResearchUtil(CameraDeviceHandler.access$3100(this.this$1.this$0));
                CameraDeviceHandler.access$3100(this.this$1.this$0).onShutterDone(this.mRequest, this.mCaptureRequestNum, this.mIsAfSuccess);
                playSoundIfPossible(CameraDeviceHandler.access$3100(this.this$1.this$0));
            } else if (CameraDeviceHandler.access$3400(this.this$1.this$0) != null) {
                updatePredictiveCaptureNumForResearchUtil(CameraDeviceHandler.access$3400(this.this$1.this$0));
                playSoundIfPossible(CameraDeviceHandler.access$3400(this.this$1.this$0));
            }
        }
    }

    private void updatePredictiveCaptureNumForResearchUtil(StateMachine stateMachine) {
        if (((PredictiveCapture) stateMachine.getUserSetting().get(stateMachine.getCurrentCapturingMode(), UserSettingKey.PREDICTIVE_CAPTURE)) == PredictiveCapture.OFF) {
            ResearchUtil.getInstance().setPredictiveCaptureNum(0);
        } else {
            ResearchUtil.getInstance().setPredictiveCaptureNum(this.mCaptureRequestNum);
        }
    }

    private void playSoundIfPossible(StateMachine stateMachine) {
        if (((ShutterSound) stateMachine.getUserSetting().get(stateMachine.getCurrentCapturingMode(), UserSettingKey.SHUTTER_SOUND)) == ShutterSound.OFF || this.this$1.this$0.isRecording()) {
            return;
        }
        this.this$1.this$0.playShutterSound(1);
    }
}
