package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$DisplayFlashColor;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$BypassCameraControllerCallbackImpl$2 implements Runnable {
    final /* synthetic */ CameraDeviceHandler$BypassCameraControllerCallbackImpl this$1;
    final /* synthetic */ BypassCamera$DisplayFlashColor val$displayFlashColor;
    final /* synthetic */ boolean val$isAfSuccess;
    final /* synthetic */ boolean val$isHighQualityBurstAvailable;
    final /* synthetic */ boolean val$requireFlash;

    CameraDeviceHandler$BypassCameraControllerCallbackImpl$2(CameraDeviceHandler$BypassCameraControllerCallbackImpl cameraDeviceHandler$BypassCameraControllerCallbackImpl, boolean z, boolean z2, boolean z3, BypassCamera$DisplayFlashColor bypassCamera$DisplayFlashColor) {
        this.this$1 = cameraDeviceHandler$BypassCameraControllerCallbackImpl;
        this.val$isAfSuccess = z;
        this.val$isHighQualityBurstAvailable = z2;
        this.val$requireFlash = z3;
        this.val$displayFlashColor = bypassCamera$DisplayFlashColor;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("SnapshotReadyDoneTask invoked pre-process:" + CameraDeviceHandler.access$2700(this.this$1.this$0) + " fast-capture:" + CameraDeviceHandler.access$1500(this.this$1.this$0));
        }
        if (CameraDeviceHandler.access$2700(this.this$1.this$0) == CameraDeviceHandler$PreProcessState.PRE_SCAN_STARTED) {
            CameraDeviceHandler.access$2800(this.this$1.this$0, CameraDeviceHandler$PreProcessState.PRE_SCAN_DONE);
            if (CameraDeviceHandler.access$1500(this.this$1.this$0) == FastCapture.LAUNCH_AND_CAPTURE || CameraDeviceHandler.access$3100(this.this$1.this$0) == null) {
                ResearchUtil.getInstance().setTimeAfDone();
                ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.FAST_CAPTURING_LAUNCH);
                this.this$1.this$0.preCapture();
                return;
            }
            CameraDeviceHandler.access$3100(this.this$1.this$0).onInitialAutoFocusDone(this.val$isAfSuccess);
            return;
        }
        if ((CameraDeviceHandler.access$2700(this.this$1.this$0) == CameraDeviceHandler$PreProcessState.NOT_STARTED || CameraDeviceHandler.access$2700(this.this$1.this$0) == CameraDeviceHandler$PreProcessState.PRE_CAPTURE_DONE) && CameraDeviceHandler.access$3100(this.this$1.this$0) != null) {
            CameraDeviceHandler.access$3100(this.this$1.this$0).onAutoFocusDone(this.val$isHighQualityBurstAvailable, this.val$isAfSuccess, this.val$requireFlash, this.val$displayFlashColor.colorRed, this.val$displayFlashColor.colorGreen, this.val$displayFlashColor.colorBlue);
        }
    }
}
