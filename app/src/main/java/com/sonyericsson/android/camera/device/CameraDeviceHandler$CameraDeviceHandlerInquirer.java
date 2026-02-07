package com.sonyericsson.android.camera.device;

import android.os.Handler;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$CameraDeviceHandlerInquirer {
    final /* synthetic */ CameraDeviceHandler this$0;

    CameraDeviceHandler$CameraDeviceHandlerInquirer(CameraDeviceHandler cameraDeviceHandler) {
        this.this$0 = cameraDeviceHandler;
    }

    CameraParameters getParameters(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        return CameraDeviceHandler.access$4100(this.this$0, cameraDeviceHandler$CameraSessionId);
    }

    boolean isNeedCreatePreviewSession() {
        return CameraDeviceHandler.access$3200(this.this$0);
    }

    boolean isIgnoreCameraError() {
        return CameraDeviceHandler.access$1000(this.this$0);
    }

    boolean isVideo() {
        return CameraDeviceHandler.access$3600(this.this$0);
    }

    boolean isRecording() {
        return this.this$0.isRecording();
    }

    void releaseRecorderOnCameraClosed() {
        if (CamLog.DEBUG) {
            CamLog.d("invoked");
        }
        CameraDeviceHandler.access$4200(this.this$0);
    }

    void prepareCaptureImageReader() {
        this.this$0.prepareCaptureImageReader(null);
    }

    void postCameraDeviceThread(CameraDeviceHandler$CameraDeviceAccessTask cameraDeviceHandler$CameraDeviceAccessTask) {
        CameraDeviceHandler.access$1800(this.this$0, cameraDeviceHandler$CameraDeviceAccessTask);
    }

    void postCameraDeviceThreadSync(CameraDeviceHandler$CameraDeviceAccessTask cameraDeviceHandler$CameraDeviceAccessTask) {
        CameraDeviceHandler.access$4300(this.this$0, cameraDeviceHandler$CameraDeviceAccessTask);
    }

    Handler getDeviceThreadHandler() {
        return CameraDeviceHandler.access$1100(this.this$0);
    }

    boolean awaitLoadSettingsThread() {
        return this.this$0.awaitLoadSettingsThread();
    }

    CameraDeviceHandler$PreProcessState getPreProcessState() {
        return CameraDeviceHandler.access$2700(this.this$0);
    }

    void changePreProcessStateTo(CameraDeviceHandler$PreProcessState cameraDeviceHandler$PreProcessState) {
        CameraDeviceHandler.access$2800(this.this$0, cameraDeviceHandler$PreProcessState);
    }

    public boolean isPreScanOnGoing() {
        return CameraDeviceHandler.access$2700(this.this$0) == CameraDeviceHandler$PreProcessState.PRE_SCAN_STARTED;
    }

    public boolean isPreCaptureOnGoing() {
        return CameraDeviceHandler.access$2700(this.this$0) == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_STARTED || CameraDeviceHandler.access$2700(this.this$0) == CameraDeviceHandler$PreProcessState.PRE_SHUTTER_DONE;
    }

    boolean isSnapshotRunning() {
        return CameraDeviceHandler.access$300(this.this$0).isSnapshotRunning();
    }
}
