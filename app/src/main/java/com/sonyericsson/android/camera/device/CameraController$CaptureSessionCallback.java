package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCaptureSession$CaptureCallback;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import java.util.Iterator;

final class CameraController$CaptureSessionCallback extends CameraCaptureSession$CaptureCallback {
    private static final int IGNORE_CAPTURE_RESULT_THRESHOLD = 5;
    private boolean mIsPreviewStartNotificationRequired;
    private final CameraDeviceHandler$CameraSessionId mSessionId;
    final /* synthetic */ CameraController this$0;

    /* synthetic */ CameraController$CaptureSessionCallback(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId);
    }

    /* synthetic */ CameraController$CaptureSessionCallback(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, boolean z, CameraController$1 cameraController$1) {
        this(cameraController, cameraDeviceHandler$CameraSessionId, z);
    }

    private CameraController$CaptureSessionCallback(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.this$0 = cameraController;
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
        this.mIsPreviewStartNotificationRequired = false;
    }

    private CameraController$CaptureSessionCallback(CameraController cameraController, CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, boolean z) {
        this.this$0 = cameraController;
        this.mSessionId = cameraDeviceHandler$CameraSessionId;
        this.mIsPreviewStartNotificationRequired = z;
    }

    @Override // android.hardware.camera2.CameraCaptureSession$CaptureCallback
    public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        if (this.mIsPreviewStartNotificationRequired) {
            this.mIsPreviewStartNotificationRequired = false;
            CameraController.access$5400(this.this$0, this.mSessionId);
            PerfLog.START_PREVIEW.end();
        }
        if (this.this$0.getCameraDeviceStatus() != CameraDeviceHandler$CameraDeviceStatus.STATUS_READY) {
            if (CamLog.DEBUG) {
                CamLog.d("CurrentDeviceState is not READY.");
                return;
            }
            return;
        }
        if (CameraController.access$4700(this.this$0) < 5) {
            CameraController.access$4708(this.this$0);
        }
        if (CameraController.access$4600(this.this$0) && (isCropRegionChanged(totalCaptureResult) || CameraController.access$4700(this.this$0) == 5)) {
            CameraController.access$000(this.this$0).onCropRegionReady();
            CameraController.access$4602(this.this$0, false);
        }
        if (totalCaptureResult != null) {
            CameraController.access$5500(this.this$0).add(totalCaptureResult);
            PositionConverter.getInstance().setCropRegion((Rect) totalCaptureResult.get(CaptureResult.SCALER_CROP_REGION));
        }
        if (CamLog.VERBOSE && CameraController.access$5500(this.this$0) != null) {
            CameraController.access$5500(this.this$0).dumpLatest();
        }
        synchronized (CameraController.access$5600(this.this$0)) {
            Iterator it = CameraController.access$5700(this.this$0).iterator();
            while (it.hasNext()) {
                ((CaptureResultCheckerBase) it.next()).check(CameraController.access$5500(this.this$0));
            }
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession$CaptureCallback
    public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
        if (CamLog.DEBUG) {
            CamLog.d("invoked sessionId:" + this.mSessionId + " captureSession:" + cameraCaptureSession.hashCode() + " reason:" + captureFailure.getReason());
        }
    }

    private boolean isCropRegionChanged(TotalCaptureResult totalCaptureResult) {
        if (totalCaptureResult == null) {
            return false;
        }
        Rect rect = (Rect) totalCaptureResult.get(CaptureResult.SCALER_CROP_REGION);
        boolean z = CameraController.access$4700(this.this$0) > 1 && !(CameraController.access$5800(this.this$0).left == rect.left && CameraController.access$5800(this.this$0).top == rect.top && CameraController.access$5800(this.this$0).right == rect.right && CameraController.access$5800(this.this$0).bottom == rect.bottom);
        CameraController.access$5802(this.this$0, rect);
        CamLog.d("isCropRegionChanged() newRect:" + rect + " changed: " + z);
        return z;
    }
}
