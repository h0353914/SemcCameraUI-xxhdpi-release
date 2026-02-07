package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.ResearchUtil;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$CameraControllerCallbackImpl implements CameraController$CameraControllerCallback {
    final /* synthetic */ CameraDeviceHandler this$0;

    private CameraDeviceHandler$CameraControllerCallbackImpl(CameraDeviceHandler cameraDeviceHandler) {
        this.this$0 = cameraDeviceHandler;
    }

    /* synthetic */ CameraDeviceHandler$CameraControllerCallbackImpl(CameraDeviceHandler cameraDeviceHandler, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler);
    }

    @Override // com.sonyericsson.android.camera.device.CameraController$CameraControllerCallback
    public void onDeviceError(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraDeviceHandler$ErrorCode cameraDeviceHandler$ErrorCode) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked sessionId:" + cameraDeviceHandler$CameraSessionId + " error:" + cameraDeviceHandler$ErrorCode);
        }
        CameraDeviceHandler.access$1100(this.this$0).post(new CameraDeviceHandler$CameraControllerCallbackImpl$OnErrorTask(this, cameraDeviceHandler$CameraSessionId, null));
        CameraDeviceHandler.access$2900(this.this$0).post(new CameraDeviceHandler$CameraControllerCallbackImpl$1(this, cameraDeviceHandler$ErrorCode));
    }

    @Override // com.sonyericsson.android.camera.device.CameraController$CameraControllerCallback
    public void onSessionDisconnected(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked sessionId:" + cameraDeviceHandler$CameraSessionId);
        }
        CameraDeviceHandler.access$1100(this.this$0).post(new CameraDeviceHandler$CameraControllerCallbackImpl$OnDisconnectedTask(this, cameraDeviceHandler$CameraSessionId, null));
        CameraDeviceHandler.access$2900(this.this$0).post(new CameraDeviceHandler$CameraControllerCallbackImpl$2(this));
    }

    @Override // com.sonyericsson.android.camera.device.CameraController$CameraControllerCallback
    public void onCropRegionReady() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        if (CameraDeviceHandler.access$3100(this.this$0) != null) {
            CameraDeviceHandler.access$3100(this.this$0).onCropRegionReady();
        }
    }

    @Override // com.sonyericsson.android.camera.device.CameraController$CameraControllerCallback
    public void onFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked result:" + cameraParameters$FaceDetectionResult);
        }
        if (CameraDeviceHandler.access$3100(this.this$0) == null || cameraParameters$FaceDetectionResult == null) {
            ResearchUtil.getInstance().clearFaceNum();
            return;
        }
        ResearchUtil.getInstance().setFaceNum(cameraParameters$FaceDetectionResult.extFaceList.size());
        if (this.this$0.isRecording()) {
            ResearchUtil.getInstance().setRecordingMaxFaceNum(cameraParameters$FaceDetectionResult.extFaceList.size());
        }
        CameraDeviceHandler.access$3100(this.this$0).onFaceDetected(cameraParameters$FaceDetectionResult);
    }

    @Override // com.sonyericsson.android.camera.device.CameraController$CameraControllerCallback
    public void onFusionResultChanged(CameraParameters$FusionResult cameraParameters$FusionResult) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked result:" + cameraParameters$FusionResult);
        }
        if (cameraParameters$FusionResult == null || CameraDeviceHandler.access$3100(this.this$0) == null) {
            return;
        }
        CameraDeviceHandler.access$3100(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_ON_FUSION_CONDITION_CHANGED, cameraParameters$FusionResult);
    }

    @Override // com.sonyericsson.android.camera.device.CameraController$CameraControllerCallback
    public void onSceneModeChanged(CameraParameters$SceneRecognitionResult cameraParameters$SceneRecognitionResult) {
        String string;
        if (CamLog.DEBUG) {
            CamLog.d("invoked result:" + cameraParameters$SceneRecognitionResult);
        }
        if (cameraParameters$SceneRecognitionResult == null) {
            return;
        }
        if (CameraDeviceHandler.access$3100(this.this$0) != null) {
            CameraDeviceHandler.access$3100(this.this$0).onSceneModeChanged(cameraParameters$SceneRecognitionResult);
        }
        LocalResearchUtil localResearchUtil = LocalResearchUtil.getInstance();
        if (cameraParameters$SceneRecognitionResult.isMacroRange) {
            string = "macro";
        } else if (cameraParameters$SceneRecognitionResult.sceneMode == null) {
            string = CameraParameterConverter$SceneMode.AUTO.toString();
        } else {
            string = cameraParameters$SceneRecognitionResult.sceneMode.toString();
        }
        localResearchUtil.setRecognizedScene(string);
    }

    @Override // com.sonyericsson.android.camera.device.CameraController$CameraControllerCallback
    public void onOpenCameraRequested(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked sessionId:" + cameraDeviceHandler$CameraSessionId);
        }
        CameraDeviceHandler.access$2900(this.this$0).post(new CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask(this, cameraDeviceHandler$CameraSessionId, null));
    }

    @Override // com.sonyericsson.android.camera.device.CameraController$CameraControllerCallback
    public void onPreviewFrameUpdated(ByteBuffer byteBuffer, int i, Rect rect) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked format:" + i + " rect:" + rect);
        }
        if (CameraDeviceHandler.access$3100(this.this$0) == null || i != 17) {
            return;
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        byteBuffer.rewind();
        CameraDeviceHandler.access$3100(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_ON_ONE_PREVIEW_FRAME_UPDATED, bArr, Integer.valueOf(i), rect);
    }

    @Override // com.sonyericsson.android.camera.device.CameraController$CameraControllerCallback
    public void onReflected(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked sessionId:" + cameraDeviceHandler$CameraSessionId);
        }
        CameraDeviceHandler.access$300(this.this$0).requestSnapshotReady(cameraDeviceHandler$CameraSessionId);
    }
}
